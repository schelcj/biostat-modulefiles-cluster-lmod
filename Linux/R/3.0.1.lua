help([[
R is a language and environment for statistical computing and graphics.
]])

whatis("Description: R is a language and environment for statistical computing and graphics.")
whatis("Vendor: http://www.r-project.org/")
whatis("Licenses: N/A")

local app     = "R"
local version = "3.1.0"
local modroot = pathJoin("/home/software/trusty", app, version)

conflict(app)

prepend_path("PATH",               pathJoin(modroot, "bin"))
prepend_path("MANPATH",            pathJoin(modroot, "share", "man"))
prepend_path("LD_LIBRARY_PATH",    pathJoin(modroot, "lib64", "R", "lib"))
prepend_path("LIBRARY_PATH",       pathJoin(modroot, "lib64", "R", "lib"))
prepend_path("C_INCLUDE_PATH",     pathJoin(modroot, "lib64", "R", "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(modroot, "lib64", "R", "include"))
prepend_path("R_LIBS",             pathJoin(modroot, "site-library"))
