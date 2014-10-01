local software_base = "/home/software"

prepend_path("BIOSTAT_SOFTWARE_BASE", software_base)
prepend_path("BIOSTAT_SOFTWARE", pathJoin(software_base, capture("lsb_release -s -c")))

-- lmod is mucking about with MANPATH somewhere that i can't find
-- so just set it back to normal
prepend_path("MANPATH", "/usr/local/share/man")
prepend_path("MANPATH", "/usr/local/man")
prepend_path("MANPATH", "/usr/share/man")

load("PrivateModules", "biostat", "slurm", "R", "perl")
