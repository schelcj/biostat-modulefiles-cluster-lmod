help([[
SAS Statistical Analysis package
]])

whatis("Description: SAS Statistical Analysis package")
whatis("Vendor: http://www.sas.com/")
whatis("Licenses: unlimited")

local app     = "SAS"
local version = "9.2"
local modroot = pathJoin("/home/software", app)

conflict(app)

prepend_path("PATH", pathJoin(modroot, "SASFoundation/" .. version .. "/bin"))
prepend_path("PATH", pathJoin(modroot, "SASFoundation/" .. version))
