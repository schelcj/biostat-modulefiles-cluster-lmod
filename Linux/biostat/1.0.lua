help([[
Biostatistics local repository
]])

whatis("Description: Biostatistics local repository")
whatis("Vendor: http://www.sph.umich.edu/biostat")
whatis("Licenses: N/A")

local app     = "biostat"
local version = "1.0"
local modroot = pathJoin(os.getenv("BIOSTAT_SOFTWARE_BASE"), app)

conflict(app)

prepend_path("PATH",               pathJoin(modroot, "bin"))
prepend_path("MANPATH",            pathJoin(modroot, "man"))
prepend_path("LD_LIBRARY_PATH",    pathJoin(modroot, "lib"))
prepend_path("LIBRARY_PATH",       pathJoin(modroot, "lib"))
prepend_path("C_INCLUDE_PATH",     pathJoin(modroot, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(modroot, "include"))
prepend_path("PERL5LIB",           pathJoin(modroot, "lib/perl5"))
