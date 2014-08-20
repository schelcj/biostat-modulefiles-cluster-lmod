help([[
Matlab is an interactive package for numerical analysis, matrix computation, control system design, and linear system analysis and design.
]])

whatis("Description: Matlab is an interactive package for numerical analysis, matrix computation, control system design, and linear system analysis and design.")
whatis("Vendor: http://www.mathworks.com/")
whatis("Licenses: 16")

local app     = "matlab"
local version = "R2013a"
local modroot = pathJoin(os.getenv("BIOSTAT_SOFTWARE"), app, version)
local mcrjre  = pathJoin(modroot, "sys/java/jre/glnxa64/jre/lib/amd64")

conflict(app)

prepend_path("PATH", pathJoin(modroot, "toolbox/distcomp/bin"))
prepend_path("PATH", pathJoin(modroot, "bin/glnxa64"))
prepend_path("PATH", pathJoin(modroot, "bin"))

prepend_path("LD_LIBRARY_PATH", mcrjre)
prepend_path("LD_LIBRARY_PATH", pathJoin(mcrjre, "client"))
prepend_path("LD_LIBRARY_PATH", pathJoin(mcrjre, "server"))
prepend_path("LD_LIBRARY_PATH", pathJoin(mcrjre, "native_threads"))
prepend_path("LD_LIBRARY_PATH", pathJoin(modroot, "sys/os/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(modroot, "runtime/glnxa64"))
prepend_path("LD_LIBRARY_PATH", pathJoin(modroot, "bin/glnxa64"))

LmodMessage("There are a limited number of licenses available for matlab.")
LmodMessage("You must request a license with your job with the --license option.\n")
LmodMessage("\t\t#SBACH --license=matlab\n")
LmodMessage("That will request one license for matlab for the duration of your job.")
