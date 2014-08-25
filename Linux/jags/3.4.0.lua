help([[
JAGS is Just Another Gibbs Sampler.  It is a program for analysis of Bayesian hierarchical models using Markov Chain Monte Carlo (MCMC) simulation not wholly unlike BUGS.
]])

whatis("Description: JAGS is Just Another Gibbs Sampler.  It is a program for analysis of Bayesian hierarchical models using Markov Chain Monte Carlo (MCMC) simulation not wholly unlike BUGS.")
whatis("Vendor: http://mcmc-jags.sourceforge.net/")
whatis("Licenses: N/A")

local app     = "jags"
local version = "3.4.0"
local modroot = pathJoin(os.getenv("BIOSTAT_SOFTWARE"), app, version)

conflict(app)

prepend_path("PATH",            pathJoin(modroot, "bin"))
prepend_path("MANPATH",         pathJoin(modroot, "share", "man"))
prepend_path("LD_LIBRARY_PATH", pathJoin(modroot, "lib"))
prepend_path("JAGS_INCLUDE",    pathJoin(modroot, "include", "JAGS"))
prepend_path("JAGS_LIB",        pathJoin(modroot, "lib"))
