local software_base = "/home/software"
prepend_path("BIOSTAT_SOFTWARE_BASE", software_base)
prepend_path("BIOSTAT_SOFTWARE", pathJoin(software_base, capture("lsb_release -s -c")))

load("PrivateModules", "biostat", "slurm", "R", "perl")
