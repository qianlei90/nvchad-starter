-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@class ChadrcConfig
local M = {
    base46 = {
        theme = "nightowl"
    },
    mason = {
        pkgs = {
            "golangci-lint",
        }
    }
}

return M
