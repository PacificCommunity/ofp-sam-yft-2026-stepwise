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
full_submit("02_NewExe/02c_MFCL_2278e", "2.2.7.8_e")

# 03_FixM
full_submit("03_FixM/03a_Max_Eval_5000", "2.2.7.8_e")
full_submit("03_FixM/03b_Ten_Phases", "2.2.7.8_e")
full_submit("03_FixM/03c_Growth_Phase_6", "2.2.7.8_e")
full_submit("03_FixM/03d_Fix_M", "2.2.7.8_e")
full_submit("03_FixM/03e_MLE_2023", "2.2.7.8_e")
full_submit("03_FixM/03f_Growth_Initial", "2.2.7.8_e")
full_submit("03_FixM/03g_Estimate_L1", "2.2.7.8_e")
full_submit("03_FixM/03h_Max_Eval_5000_E4", "2.2.7.8_e")
full_submit("03_FixM/03i_Ten_Phases_E4", "2.2.7.8_e")
full_submit("03_FixM/03j_Growth_Phase_6_E4", "2.2.7.8_e")
full_submit("03_FixM/03k_Fix_M_E4", "2.2.7.8_e")
full_submit("03_FixM/03l_MLE_2023_E4", "2.2.7.8_e")
full_submit("03_FixM/03m_Growth_Initial_E4", "2.2.7.8_e")
full_submit("03_FixM/03n_Estimate_L1_E4", "2.2.7.8_e")
full_submit("03_FixM/03o_Max_Eval_5000_E3", "2.2.7.8_e")
full_submit("03_FixM/03p_Ten_Phases_E3", "2.2.7.8_e")
full_submit("03_FixM/03q_Growth_Phase_6_E3", "2.2.7.8_e")
full_submit("03_FixM/03r_Fix_M_E3", "2.2.7.8_e")
full_submit("03_FixM/03s_MLE_2023_E3", "2.2.7.8_e")
full_submit("03_FixM/03t_Growth_Initial_E3", "2.2.7.8_e")
full_submit("03_FixM/03u_Estimate_L1_E3", "2.2.7.8_e")
