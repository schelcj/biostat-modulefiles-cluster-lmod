help([[
BUGS is a software package for performing Bayesian inference Using Gibbs Sampling.
]])

whatis("Description: BUGS is a software package for performing Bayesian inference Using Gibbs Sampling.")
whatis("Vendor: http://www.openbugs.info/w/")
whatis("Licenses: N/A")

local app     = "openbugs"
local version = "3.2.3"
local modroot = pathJoin(os.getenv("BIOSTAT_SOFTWARE"), app, version)

conflict(app)

prepend_path("PATH",               pathJoin(modroot, "bin"))
prepend_path("MANPATH",            pathJoin(modroot, "share", "man"))
prepend_path("LD_LIBRARY_PATH",    pathJoin(modroot, "lib"))
prepend_path("LIBRARY_PATH",       pathJoin(modroot, "lib"))
