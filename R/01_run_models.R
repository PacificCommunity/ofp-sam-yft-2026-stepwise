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

# 04_TimeVaryingCV
full_submit("04_TimeVaryingCV/04a_Time_Varying_CV", "2.2.7.8_e")

# 05_LengthBasedSel
full_submit("05_LengthBasedSel/05a_Length_Based_Sel", "2.2.7.8_e")
full_submit("05_LengthBasedSel/05b_LBS_From_03m", "2.2.7.8_e")

# 06_Richards
full_submit("06_Richards/06a_Richards", "2.2.7.8_e")
full_submit("06_Richards/06b_Richards_From_03m", "2.2.7.8_e")

# 07_OrthoPolyRec
full_submit("07_OrthoPolyRec/07a_Ortho_Poly_Rec_70", "2.2.7.8_e")
full_submit("07_OrthoPolyRec/07b_Ortho_Poly_Rec_50", "2.2.7.8_e")
full_submit("07_OrthoPolyRec/07c_Ortho_Poly_Rec_30", "2.2.7.8_e")
full_submit("07_OrthoPolyRec/07d_OPR_70_Interactions", "2.2.7.8_e")
full_submit("07_OrthoPolyRec/07e_OPR_50_Interactions", "2.2.7.8_e")
full_submit("07_OrthoPolyRec/07f_OPR_30_Interactions", "2.2.7.8_e")
full_submit("07_OrthoPolyRec/07g_OPR_70_From_03m", "2.2.7.8_e")
full_submit("07_OrthoPolyRec/07h_OPR_70_Original_Parest", "2.2.7.8_e")
