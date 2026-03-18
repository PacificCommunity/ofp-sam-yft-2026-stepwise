library(condor)
source("utilities.R")
options(width=160)

session <- ssh_connect("NOUOFPCALC02")

(jobs <- condor_dir())

# 01_Diag2020
full_submit("01_Diag2020/01b_Ten_Phases", "2.0.7.0")
full_submit("01_Diag2020/01c_Gradient", "2.0.7.0")

# 02_NewExe
full_submit("02_NewExe/02a_Nonzero_Maturity", "2.0.7.0")
full_submit("02_NewExe/02b_Version_2200", "2.2.0.0")

# 03_PreCatchCond
full_submit("03_PreCatchCond/03a_Script_Format", "2.2.0.0")
full_submit("03_PreCatchCond/03b_Reorder_Within_Phases", "2.2.0.0")
full_submit("03_PreCatchCond/03c_Fish_Grouping_Tag_Return", "2.2.0.0")
full_submit("03_PreCatchCond/03d_Maturity_Step_One", "2.2.0.0")
full_submit("03_PreCatchCond/03e_Reduce_Reg_Rec_Penalty", "2.2.0.0")
full_submit("03_PreCatchCond/03f_Zmax_Three", "2.2.0.0")
full_submit("03_PreCatchCond/03g_Finit_Zero", "2.2.0.0")
full_submit("03_PreCatchCond/03h_Decrease_Move_Coeff_Pen", "2.2.0.0")

# 04_CatchCond
full_submit("04_CatchCond/04a_Remove_Nulls_Frq_File", "2.2.0.0")
full_submit("04_CatchCond/04b_Catch_Cond_Old_CPUE", "2.2.0.0")
full_submit("04_CatchCond/04c_Catch_Cond_New_CPUE", "2.2.0.0")
full_submit("04_CatchCond/04d_Redundant_Flags", "2.2.0.0")
full_submit("04_CatchCond/04e_Configure_Projections", "2.2.0.0")
full_submit("04_CatchCond/04f_Period_Yield_Calc", "2.2.0.0")

# 05_Selectivity
full_submit("05_Selectivity/05a_Allow_Decreasing_LL_Sel", "2.2.0.0")

# 06_TagStructure
full_submit("06_TagStructure/06a_Rep_Rate_Bound_99", "2.2.0.0")
full_submit("06_TagStructure/06b_Remove_Groups_Five", "2.2.0.0")

# 07_Growth
full_submit("07_Growth/07a_Fix_L1", "2.2.2.0")
full_submit("07_Growth/07b_Initial_Params", "2.2.2.0")

# 08_DataWeights
full_submit("08_DataWeights/08a_CPUE_Variance", "2.2.2.0")
full_submit("08_DataWeights/08b_Age_Variance", "2.2.2.0")
full_submit("08_DataWeights/08c_Size_Variance", "2.2.2.0")

# 09_Natmort
full_submit("09_Natmort/09a_Scaled_M", "2.2.2.0")
full_submit("09_Natmort/09b_Lorenzen_M", "2.2.2.0")

# 10_TaggerEffect
full_submit("10_TaggerEffect/10a_Tagger_Effect", "2.2.2.0")

# 11_NewCPUEMethod
full_submit("11_NewCPUEMethod/11a_New_CPUE_Method", "2.2.2.0")

# 12_NewData
full_submit("12_NewData/12a_Length_Weight_Coeffs", "2.2.2.0")
full_submit("12_NewData/12b_New_Data", "2.2.2.0")

# 13_FilterSizeComps
full_submit("13_FilterSizeComps/13a_Compress_Zero_Tails", "2.2.2.0")
full_submit("13_FilterSizeComps/13b_MFCL_Filter_50", "2.2.2.0")
full_submit("13_FilterSizeComps/13c_Zero_Sel_Young_F18", "2.2.2.0")
full_submit("13_FilterSizeComps/13d_Lower_L2_Bound", "2.2.2.0")
full_submit("13_FilterSizeComps/13e_Init_2_Signif", "2.2.2.0")

# 14_FiveRegions
full_submit("14_FiveRegions/14a_Five_Regions", "2.2.2.0_d")
full_submit("14_FiveRegions/14b_Phase_Ten", "2.2.2.0_d")
full_submit("14_FiveRegions/14c_Phase_Eleven", "2.2.2.0_d")

# 15_Sensitivities
full_submit("07_Growth/07x_Estimate_L1_From_07a", "2.2.2.0_d")
full_submit("07_Growth/07y_Estimate_L1_From_07b", "2.2.2.0_d")
full_submit("15_Sensitivities/15a_Classic_Fixed_M", "2.2.2.0_d")
full_submit("15_Sensitivities/15b2_Est_L1_From_14b", "2.2.2.0_d")
full_submit("15_Sensitivities/15b3_Est_L1_From_14c", "2.2.2.0_d")
full_submit("15_Sensitivities/15c1_Old_Style_Mix1_From_30c", "2.2.2.0_d")
full_submit("15_Sensitivities/15c2_Old_Style_Mix2_From_14c", "2.2.2.0_d")

# 30_TagMixing
full_submit("30_TagMixing/30a_Five_Regions_Mix1", "2.2.2.0_d")
full_submit("30_TagMixing/30b_Phase_Ten_Mix1", "2.2.2.0_d")
full_submit("30_TagMixing/30c_Phase_Eleven_Mix1", "2.2.2.0_d")
full_submit("30_TagMixing/30d_Phase_Eleven_Mix1_Init", "2.2.2.0_d")
