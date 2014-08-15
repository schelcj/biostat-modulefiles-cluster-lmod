help([[
SLURM Resource Manager and Job Scheduler
]])

whatis("Description: SLURM Resource Manager and Job Scheduler")
whatis("Vendor: https://computing.llnl.gov/linux/slurm/")
whatis("Licenses: N/A")

local app     = "slurm"
local version = "14.03.6"
local modroot = pathJoin("/home/software/trusty", app, version)

conflict(app)

prepend_path("PATH",            pathJoin(modroot, "bin"))
prepend_path("PATH",            pathJoin(modroot, "sbin"))
prepend_path("MANPATH",         pathJoin(modroot, "man"))
prepend_path("MANPATH",         pathJoin(modroot, "share", "man"))
prepend_path("LD_LIBRARY_PATH", pathJoin(modroot, "lib"))
prepend_path("LIBRARY_PATH",    pathJoin(modroot, "lib"))
prepend_path("C_INCLUDE_PATH",  pathJoin(modroot, "include"))
prepend_path("PERL5LIB",        pathJoin(modroot, "lib/perl"))

set_alias("sstate",          pathJoin(modroot, "/../utils/utils/cluster_status.pl"))
set_alias("sarray",          pathJoin(modroot, "/../utils/sarray/sarray"))
set_alias("srunall",         pathJoin(modroot, "/../utils/srunall/srunall"))
set_alias("sdown",           "sinfo --states=down,drain,fail,no_respond,maint,unk --format=\"%13n %20f %20H %12u %32E\"")
set_alias("squeue_priority", "squeue -S -p -t pd -l -o \"%9Q %.7i %.9P %.8j %.8u %.8T %.10M %.9l %.6D %R\" --sort=-p,i")
set_alias("show_qos",        "sacctmgr show qos format=name,priority,preemptmode,maxcpusperuser,maxsubmit,maxwall")
