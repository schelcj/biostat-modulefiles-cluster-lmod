local home = os.getenv("HOME")
local private_modules = pathJoin(home, "privatemodules")

prepend_path("MODULEPATH", private_modules)
