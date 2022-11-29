return function(config)
        ---@diagnostic disable-next-line: different-requires
        local null_ls = require "null-ls"
        -- Check supported formatters and linters
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
        -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
        config.sources = {
                null_ls.builtins.formatting.stylua,
        }

        return config -- return final config table
end
