help([[
SAS Statistical Analysis package
]])

whatis("Description: SAS Statistical Analysis package")
whatis("Vendor: http://www.sas.com/")
whatis("Licenses: unlimited")

local app     = "SAS"
local version = "9.3"
local modroot = pathJoin("/home/software/trusty", app, version)

conflict(app)

prepend_path("PATH", pathJoin(odroot, "SASFoundation/" .. version .. "/bin"))
prepend_path("PATH", pathJoin(modroot, "SASFoundation/" .. version))
