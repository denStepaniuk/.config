To install :
> WSL case
- brew install fd : uses by `venv-selector.lua`, needs to seartc envs

> [!IMPORTANT]
Has to be added in to .bashrc / .zshrc 
> tmux 'smart' session handler
> usge: tm - start new session, tm <session_name> start named session
> if session exist - attached to it

```bash
tm() {
  [[ -z "$1" ]] && { tmux ls; return; }
  tmux new-session -A -s "$1"
}
```

## Python debugging

- Required: `debugpy` (installed automatically via `mason-nvim-dap`)
- Optional: activate a venv with `<leader>vs` before debugging

Keymaps:
- `<leader>db` toggle breakpoint
- `<leader>dB` conditional breakpoint
- `<leader>dc` continue/start
- `<leader>di` step into
- `<leader>do` step over
- `<leader>dO` step out
- `<leader>dl` run last
- `<leader>dr` toggle REPL
- `<leader>dt` toggle DAP UI
- `<leader>dm` debug test method
- `<leader>df` debug test class

### Examples

Debug current Python file:
1. Open a `.py` file
2. Set a breakpoint with `<leader>db`
3. Start debugging with `<leader>dc`

Debug pytest tests:
- Place cursor on a test method and press `<leader>dm`
- Place cursor on a test class and press `<leader>df`

Debug a Django project (runserver):
1. Open your Django project root
2. Set breakpoints in app code
3. Press `<leader>dc` and choose `Django runserver`

Notes:
- The Django config uses `manage.py runserver --noreload` to keep the debugger attached
- If you use a venv, activate it first with `<leader>vs`

FastAPI example (uvicorn):
1. Start with `uvicorn app.main:app --reload --port 8000`
2. Attach using a DAP config that launches uvicorn without reload

Flask example:
1. Start with `flask --app app run --debug`
2. Attach using a DAP config that runs `python -m flask run`

Project-specific DAP config snippet (place in `lua/plugins/dap.lua` inside the dap-python config):

```lua
local dap = require("dap")
dap.configurations.python = dap.configurations.python or {}

table.insert(dap.configurations.python, {
  type = "python",
  request = "launch",
  name = "FastAPI (uvicorn)",
  module = "uvicorn",
  args = { "app.main:app", "--host", "127.0.0.1", "--port", "8000" },
  console = "integratedTerminal",
})

table.insert(dap.configurations.python, {
  type = "python",
  request = "launch",
  name = "Flask (module)",
  module = "flask",
  args = { "run", "--no-debugger", "--no-reload" },
  env = { FLASK_APP = "app" },
  console = "integratedTerminal",
})
```
