library(condor)
source("utilities.R")
options(width=160)

session <- ssh_connect("NOUOFPSUBMIT")

(jobs <- condor_dir())

# 01_Diag2023
full_submit("01_Diag2023/01a_Online_Repo", "2.2.2.0_d")
