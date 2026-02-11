return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"theHamsta/nvim-dap-virtual-text",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dapui.setup()
			require("nvim-dap-virtual-text").setup()

			vim.fn.sign_define("DapBreakpoint", { text = "B", texthl = "DiagnosticError" })
			vim.fn.sign_define("DapBreakpointCondition", { text = "C", texthl = "DiagnosticWarn" })
			vim.fn.sign_define("DapBreakpointRejected", { text = "R", texthl = "DiagnosticWarn" })
			vim.fn.sign_define("DapLogPoint", { text = "L", texthl = "DiagnosticInfo" })

			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end

			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
			vim.keymap.set("n", "<leader>dB", function()
				dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end, { desc = "Set conditional breakpoint" })
			vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Continue" })
			vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Step into" })
			vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Step over" })
			vim.keymap.set("n", "<leader>dO", dap.step_out, { desc = "Step out" })
			vim.keymap.set("n", "<leader>dl", dap.run_last, { desc = "Run last" })
			vim.keymap.set("n", "<leader>dr", dap.repl.toggle, { desc = "Toggle REPL" })
			vim.keymap.set("n", "<leader>dt", dapui.toggle, { desc = "Toggle DAP UI" })
		end,
	},
	{
		"mfussenegger/nvim-dap-python",
		ft = "python",
		dependencies = {
			"mfussenegger/nvim-dap",
			"williamboman/mason.nvim",
		},
		config = function()
			local dap = require("dap")
			local python_path

			local debugpy_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"

			if vim.fn.executable(debugpy_path) == 1 then
				python_path = debugpy_path
			else
				local venv = os.getenv("VIRTUAL_ENV")
				if venv and #venv > 0 then
					python_path = venv .. "/bin/python"
				else
					python_path = vim.fn.exepath("python")
				end
			end

			require("dap-python").setup(python_path)

			dap.configurations.python = dap.configurations.python or {}

			table.insert(dap.configurations.python, {
				type = "python",
				request = "launch",
				name = "Django runserver",
				program = vim.fn.glob(vim.fn.getcwd() .. "/**/manage.py"),
				args = { "runserver", "--noreload" },
				django = true,
				console = "integratedTerminal",
			})

			vim.keymap.set("n", "<leader>dm", function()
				require("dap-python").test_method()
			end, { desc = "Debug test method" })
			vim.keymap.set("n", "<leader>df", function()
				require("dap-python").test_class()
			end, { desc = "Debug test class" })
		end,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		dependencies = "williamboman/mason.nvim",
		opts = {
			automatic_installation = true,
			ensure_installed = {
				"python",
			},
		},
	},
}
