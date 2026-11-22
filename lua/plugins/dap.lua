return {
    {
        "mfussenegger/nvim-dap",

        config = function()
            local dap = require("dap")

            dap.adapters.gdb = {
                type = "executable",
                command = "gdb",
                args = { "--interpreter=dap" },
            }

            dap.configurations.cpp = {
                {
                    name = "Launch C/C++",
                    type = "gdb",
                    request = "launch",
                    program = function()
                        return vim.fn.input(
                            "Executable: ",
                            vim.fn.getcwd() .. "/"
                        )
                    end,
                    cwd = "${workspaceFolder}",
                    stopAtBeginningOfMainSubprogram = false,
                },
            }

            dap.configurations.c = dap.configurations.cpp

            vim.keymap.set("n", "<F5>", dap.continue)
            vim.keymap.set("n", "<F10>", dap.step_over)
            vim.keymap.set("n", "<F11>", dap.step_into)
            vim.keymap.set("n", "<F12>", dap.step_out)
            vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
        end,
    },
}
