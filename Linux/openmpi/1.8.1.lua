help([[
The Open MPI Project is an open source Message Passing Interface implementation that is developed and maintained by a consortium of academic, research, and industry partners. Open MPI is therefore able to combine the expertise, technologies, and resources from all across the High Performance Computing community in order to build the best MPI library available. Open MPI offers advantages for system and software vendors, application developers and computer science researchers.
]])

whatis("Description: The Open MPI Project is an open source Message Passing Interface implementation that is developed and maintained by a consortium of academic, research, and industry partners. Open MPI is therefore able to combine the expertise, technologies, and resources from all across the High Performance Computing community in order to build the best MPI library available. Open MPI offers advantages for system and software vendors, application developers and computer science researchers.")
whatis("Vendor: http://www.open-mpi.org/")
whatis("License: http://www.open-mpi.org/community/license.php")

local app     = "openmpi"
local version = "1.8.1"
local modroot = pathJoin("/home/software/trusty", app, version)

conflict(app)

prepend_path("PATH",               pathJoin(modroot, "bin"))
prepend_path("MANPATH",            pathJoin(modroot, "share", "man"))
prepend_path("LD_LIBRARY_PATH",    pathJoin(modroot, "lib"))
prepend_path("LIBRARY_PATH",       pathJoin(modroot, "lib"))
prepend_path("C_INCLUDE_PATH",     pathJoin(modroot, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(modroot, "include"))
