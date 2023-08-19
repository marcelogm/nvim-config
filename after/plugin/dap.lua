local util = require('jdtls.util')
local dap = require('dap')

require("dapui").setup()

-- TODO: melhorar
dap.adapters.java = function(callback)
  util.execute_command({ command = 'vscode.java.startDebugSession' }, function(err0, port)
    assert(not err0, vim.inspect(err0))
    callback({
      type = 'server',
      host = '127.0.0.1',
      port = port,
    })
  end)
end

dap.configurations.java = {
  {
    type = 'java',
    request = 'attach',
    name = "Java attach",
    hostName = "127.0.0.1",
    port = 5005
  },
}

require('telescope').load_extension('dap')
