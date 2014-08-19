help([[
nctop is a remote system monitor for unix hosts.
]])

whatis("Description: nctop is a remote system monitor for unix hosts")
whatis("Vendor: http://www.rz.uni-karlsruhe.de/~hj28/")
whatis("Licenses: N/A")

local app     = "nctop"
local version = "0.23.2"
local modroot = pathJoin("/home/software", app)

conflict(app)

prepend_path("PATH",               pathJoin(modroot, "bin"))
prepend_path("MANPATH",            pathJoin(modroot, "man"))
