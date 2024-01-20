return {
  n = {
    K = { function() vim.lsp.buf.hover() end, desc = "Hover symbol details" },

    ["<leader><cr>"] = { name = "Remove search count highlight" },
    ["<leader>m"] = { name = "Remove the Windows ^M" },
    ["<leader>O"] = { name = " Octo /  Overseer" },
    ["<leader>bC"] = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if require("astronvim.utils").is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },
  },
  t = { ["<M-esc>"] = { "<C-\\><C-n>", desc = " Exit Terminal Mode" } },
}
