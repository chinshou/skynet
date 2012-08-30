local skynet = require "skynet"

skynet.dispatch()

skynet.start(function()
	print("Server start")
	local lualog = skynet.launch("snlua","lualog")
	local launcher = skynet.launch("snlua","launcher")
	local remoteroot = skynet.launch("snlua","remote_root")
	local console = skynet.launch("snlua","console")
	local watchdog = skynet.launch("snlua","watchdog","8888 4 0")
	local db = skynet.launch("snlua","simpledb")
	local connection = skynet.launch("connection","256")
	local redis = skynet.launch("snlua","redis-mgr")
	skynet.exit()
end)
