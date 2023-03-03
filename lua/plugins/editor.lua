return {
  {
    "CRAG666/code_runner.nvim",
    requires = "nvim-lua/plenary.nvim",
    keys = { { "<leader>r", "<cmd>RunCode<cr>", desc = "Run Code" } },
    init = function()
      require("code_runner").setup({
        -- put here the commands by filetype
        filetype = {
          java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
          python = "python3 -u",
          typescript = "deno run",
          php = "cd $dir && php $fileName",
          --rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
          rust = "cd $dir && cargo run",
        },
      })
    end,
  },
  {
    "terrortylor/nvim-comment",
    init = function()
      require("nvim_comment").setup({
        -- Linters prefer comment and line to have a space in between markers
        marker_padding = true,
        -- should comment out empty or whitespace only lines
        comment_empty = true,
        -- trim empty comment whitespace
        comment_empty_trim_whitespace = true,
        -- Should key mappings be created
        create_mappings = true,
        -- Normal mode mapping left hand side
        line_mapping = "gcc",
        -- Visual/Operator mapping left hand side
        operator_mapping = "gc",
        -- text object mapping, comment chunk,,
        comment_chunk_text_object = "ic",
        -- Hook function to call before commenting takes place
        hook = nil,
      })
    end,
  },
}
