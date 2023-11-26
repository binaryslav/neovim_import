return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim',       tag = 'legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
    config = function()

      local autocmd_group = vim.api.nvim_create_augroup("Custom auto-commands", { clear = true })
      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        pattern = { "*.go", "go.mod" },
        desc = "Auto-format Go files after saving",
        callback = function()
          local fileName = vim.api.nvim_buf_get_name(0)
          vim.cmd(":silent !gofumpt -w " .. fileName)
        end,
        group = autocmd_group,
      })

      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
      vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
      vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })


      local on_attach = function(_, bufnr)
        local nmap = function(keys, func, desc)
          if desc then
            desc = 'LSP: ' .. desc
          end

          vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
        end

        nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[n]ame')
        nmap('<leader>ca', vim.lsp.buf.code_action, '[C]ode [A]ction')

        nmap('gd', vim.lsp.buf.definition, '[G]oto [D]efinition')
        nmap('gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
        nmap('gI', vim.lsp.buf.implementation, '[G]oto [I]mplementation')
        nmap('<leader>D', vim.lsp.buf.type_definition, 'Type [D]efinition')
        nmap('<leader>ds', require('telescope.builtin').lsp_document_symbols, '[D]ocument [S]ymbols')
        nmap('<leader>ws', require('telescope.builtin').lsp_dynamic_workspace_symbols, '[W]orkspace [S]ymbols')

        nmap('K', vim.lsp.buf.hover, 'Hover Documentation')
        nmap('<C-k>', vim.lsp.buf.signature_help, 'Signature Documentation')

        nmap('gD', vim.lsp.buf.declaration, '[G]oto [D]eclaration')
        nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
        nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
        nmap('<leader>wl', function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, '[W]orkspace [L]ist Folders')

        vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
          vim.lsp.buf.format()
        end, { desc = 'Format current buffer with LSP' })
      end

      local servers = {
        -- clangd = {},
        gopls = {},
        -- pyright = {},
        -- rust_analyzer = {},
        -- tsserver = {},

        lua_ls = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      }

      -- Setup neovim lua configuration
      require('neodev').setup()

      -- nvim-cmp supports additional completion capabilities, so broadcast that to servers
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

      local mason_lspconfig = require 'mason-lspconfig'

      mason_lspconfig.setup {
        ensure_installed = vim.tbl_keys(servers),
      }

      mason_lspconfig.setup_handlers {
        function(server_name)
          require('lspconfig')[server_name].setup {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = servers[server_name],
          }
        end,

        ["gopls"] = function()
          local lspconfig = require("lspconfig")

          lspconfig['gopls'].setup {
            capabilities = capabilities,
            on_attach = on_attach,

            cmd = { "gopls" },
            filetypes = { "go", "gomod", "gowork", "gotmpl" },
            root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),

            settings = {
              gopls = {
                analyses = {
                  assign = true,
                  atomic = true,
                  bools = true,
                  composites = true,
                  copylocks = true,
                  deepequalerrors = true,
                  embed = true,
                  errorsas = true,
                  fieldalignment = true,
                  httpresponse = true,
                  ifaceassert = true,
                  loopclosure = true,
                  lostcancel = true,
                  nilfunc = true,
                  nilness = true,
                  nonewvars = true,
                  printf = true,
                  shadow = true,
                  shift = true,
                  simplifycompositelit = true,
                  simplifyrange = true,
                  simplifyslice = true,
                  sortslice = true,
                  stdmethods = true,
                  stringintconv = true,
                  structtag = true,
                  testinggoroutine = true,
                  tests = true,
                  timeformat = true,
                  unmarshal = true,
                  unreachable = true,
                  unsafeptr = true,
                  unusedparams = true,
                  unusedresult = true,
                  unusedvariable = true,
                  unusedwrite = true,
                  useany = true,
                },
                staticcheck = true,
                gofumpt = true,

                completeUnimported = true,
                hoverKind = "FullDocumentation",
                linkTarget = "pkg.go.dev",
                usePlaceholders = true,
                vulncheck = "Imports",
              },
            },
          }
        end,

      }
    end,
  }
}
