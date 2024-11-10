require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
require('dap-python').test_runner = 'pytest'
require('dap-python').resolve_python = function()
  return '/home/fr3udian/.virtualenvs/venv/bin/python3.11'
end
