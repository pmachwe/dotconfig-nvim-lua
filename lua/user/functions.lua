-- Set theme based on env variable
-- to light/dark versions

local M = {}

M.set_theme = function()
    local cs
    if (os.getenv("MY_BACKGROUND") == "dark") then
        cs = "nordfox"
    else
        cs = "dayfox"
    end

    vim.cmd("colorscheme " .. cs)
end

return M
