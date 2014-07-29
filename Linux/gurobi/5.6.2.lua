help([[
]])

whatis("Description: ")
whatis("Vendor: ")
whatis("Licenses: ")

local app     = "gurobi"
local version = "5.6.2"
local modroot = pathJoin("/home/software/trusty", app, version)

conflict(app)

prepend_path("PATH",               pathJoin(modroot, "bin"))
prepend_path("LD_LIBRARY_PATH",    pathJoin(modroot, "lib"))
prepend_path("LIBRARY_PATH",       pathJoin(modroot, "lib"))
prepend_path("C_INCLUDE_PATH",     pathJoin(modroot, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(modroot, "include"))

setenv("GUROBI_HOME", modroot)
setenv("GRB_LICENSE_FILE", pathJoin(modroot, "../" .. app .. ".lic"))
