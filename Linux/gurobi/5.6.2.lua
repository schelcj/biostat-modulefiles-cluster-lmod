help([[
The Gurobi Optimizer is a state-of-the-art solver for linear programming (LP), quadratic programming (QP) and mixed-integer programming (MILP and MIQP). It was designed from the ground up to exploit modern multi-core processors.
]])

whatis("Description: The Gurobi Optimizer is a state-of-the-art solver for linear programming (LP), quadratic programming (QP) and mixed-integer programming (MILP and MIQP). It was designed from the ground up to exploit modern multi-core processors.")
whatis("Vendor: http://www.gurobi.com/")
whatis("Licenses: N/A")

local app     = "gurobi"
local version = "5.6.2"
local modroot = pathJoin(os.getenv("BIOSTAT_SOFTWARE"), app, version)

conflict(app)

prepend_path("PATH",               pathJoin(modroot, "bin"))
prepend_path("LD_LIBRARY_PATH",    pathJoin(modroot, "lib"))
prepend_path("LIBRARY_PATH",       pathJoin(modroot, "lib"))
prepend_path("C_INCLUDE_PATH",     pathJoin(modroot, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(modroot, "include"))

setenv("GUROBI_HOME", modroot)
setenv("GRB_LICENSE_FILE", pathJoin(modroot, "../" .. app .. ".lic"))
