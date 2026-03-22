library(condor)
source("utilities.R")
options(width=160)

session <- ssh_connect("NOUOFPSUBMIT")

(jobs <- condor_dir())

# 01_Diag2023
full_submit("01_Diag2023/01a_Online_Repo", "2.2.2.0_d")

# 02_NewExe
full_submit("02_NewExe/02a_New_Exe", "2.2.7.8_d")
full_submit("02_NewExe/02b_Increase_Specs", "2.2.7.8_d")
full_submit("02_NewExe/02c_2278e", "2.2.7.8_e")
