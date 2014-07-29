help([[
Local perl cpan installation.
]])

whatis("Description: Local perl cpan installation.")
whatis("Vendor: http://www.metacpan.org/")
whatis("Licenses: N/A")

local app     = "perl"
local version = "5.18.2"
local modroot = pathJoin("/home/software/trusty", app, version)

conflict(app)

prepend_path("PATH",     pathJoin(modroot, "bin"))
prepend_path("MANPATH",  pathJoin(modroot, "share", "man"))
prepend_path("PERL5LIB", pathJoin(modroot, "lib/perl5"))
