help([[
Matlab is an interactive package for numerical analysis, matrix computation, control system design, and linear system analysis and design.
]])

whatis("Description: Matlab is an interactive package for numerical analysis, matrix computation, control system design, and linear system analysis and design.")
whatis("Vendor: http://www.mathworks.com/")
whatis("Licenses: 16")

local app     = "matlab"
local version = "R2013a"
local modroot = pathJoin("/home/software/trusty", app, version)
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

# TODO - output a message about using gres
