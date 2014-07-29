help([[
The Portable Hardware Locality (hwloc) software package provides a portable abstraction (across OS, versions, architectures, ...) of the hierarchical topology of modern architectures, including NUMA memory nodes, sockets, shared caches, cores and simultaneous multithreading. It also gathers various system attributes such as cache and memory information as well as the locality of I/O devices such as network interfaces, InfiniBand HCAs or GPUs. It primarily aims at helping applications with gathering information about modern computing hardware so as to exploit it accordingly and efficiently.
]])

whatis("Description: The Portable Hardware Locality (hwloc) software package provides a portable abstraction (across OS, versions, architectures, ...) of the hierarchical topology of modern architectures, including NUMA memory nodes, sockets, shared caches, cores and simultaneous multithreading. It also gathers various system attributes such as cache and memory information as well as the locality of I/O devices such as network interfaces, InfiniBand HCAs or GPUs. It primarily aims at helping applications with gathering information about modern computing hardware so as to exploit it accordingly and efficiently.")
whatis("Vendor: http://www.open-mpi.org/projects/hwloc/")
whatis("Licenses: http://www.opensource.org/licenses/bsd-license.php")

local app     = "hwloc"
local version = "1.9"
local modroot = pathJoin("/home/software/trusty", app, version)

conflict(app)

prepend_path("PATH",               pathJoin(modroot, "bin"))
prepend_path("MANPATH",            pathJoin(modroot, "share", "man"))
prepend_path("LD_LIBRARY_PATH",    pathJoin(modroot, "lib"))
prepend_path("LIBRARY_PATH",       pathJoin(modroot, "lib"))
prepend_path("C_INCLUDE_PATH",     pathJoin(modroot, "include"))
prepend_path("CPLUS_INCLUDE_PATH", pathJoin(modroot, "include"))
