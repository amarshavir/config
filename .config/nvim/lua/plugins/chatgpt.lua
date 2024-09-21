-- local session = vim.fn.expand("$BW_SESSION")
local bwSession = os.getenv("BW_SESSION")

local checkBWSession = function()
  return bwSession ~= nil and bwSession ~= ""
end

return {
  "jackMort/ChatGPT.nvim",
  cond = checkBWSession(),
  config = function()
    require("chatgpt").setup({
      -- this config assumes you have OPENAI_API_KEY environment variable set
      api_key_cmd = "bw get passsword gpt --session " .. bwSession,
      openai_params = {
        -- NOTE: model can be a function returning the model name
        -- this is useful if you want to change the model on the fly
        -- using commands
        -- Example:
        -- model = function()
        --     if some_condition() then
        --         return "gpt-4-1106-preview"
        --     else
        --         return "gpt-3.5-turbo"
        --     end
        -- end,
        model = "gpt-4-1106-preview",
        frequency_penalty = 0,
        presence_penalty = 0,
        max_tokens = 4095,
        temperature = 0.2,
        top_p = 0.1,
        n = 1,
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
