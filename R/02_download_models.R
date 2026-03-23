library(condor)
source("utilities.R")
options(width=160)

session <- ssh_connect("NOUOFPSUBMIT")

# Select Condor models that are finished
(jobs <- condor_dir(sort="dir"))
models <- jobs$dir[jobs$status=="finished"]

################################################################################
# Copy from Condor to Penguin

# Prepare SCP commands
from <- file.path("condor", models)
to <- "penguin:yft/2026/model_runs/stepwise"
cmd <- paste("scp -pr", from, to)

# Copy from Condor to Penguin
for(i in seq_along(from))
{
  message("Copying '", models[i], "'")
  try(ssh_exec_stdout(cmd[i]))
}

################################################################################
# Download from Condor to laptop

# Destination folders, will be created by full_download() below
folders <- file.path("~/x/yft/2026/model_runs/stepwise", models)

# Download results
for(i in seq_along(folders))
  try(full_download(folders[i]))
