local mason_dap=require("mason-nvim-dap")
local dap=require("dap")
local dapui=require("dapui")

--acquire adapters we can get automatically
mason_dap.setup({
    ensure_installed={
        "codelldb",
        "python",
        "javadbg", --shit don't work, idk why
        "js",
        "bash",
        "go",
        "coreclr",
        "php",
        "node2",
    },
    handlers={}
})

--manual setup of stuff below
--lua
dap.adapters["lua-local"] = {
    type = "executable",
    command = "node",
    args = {
        "/home/david/Documents/source/local-lua-debugger-vscode/extension/debugAdapter.js"
    },
    enrich_config = function(config, on_config)
        if not config["extensionPath"] then
            local c = vim.deepcopy(config)
            -- 💀 If this is missing or wrong you'll see 
            -- "module 'lldebugger' not found" errors in the dap-repl when trying to launch a debug session
            c.extensionPath = "/home/david/Documents/source/local-lua-debugger-vscode/"
            on_config(c)
        else
            on_config(config)
        end
    end,
}

dap.configurations.lua={
    {
        type="lua-local",
        request="launch",
        name="Lua Debugger",
        cwd="${workspaceFolder}",
        program={
            lua='lua5.1',
            file='${file}',
        },
        args={},
    }
}

--finally setup dapui
--and make it so dapui opens when dap goes off
dapui.setup()
dap.listeners.after.event_initialized["dapui_config"]=function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"]=function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"]=function()
    dapui.close()
end
