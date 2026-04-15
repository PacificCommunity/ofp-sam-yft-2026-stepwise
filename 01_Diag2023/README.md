# 01_Diag2023

## 01a_Online_Repo

https://github.com/PacificCommunity/ofp-sam-yft-2023-diagnostic

**doitall.sh (YFT 2023 diagnostic model)**

Phase | Settings
----- | ------------------------------------------------------------------------
0     | makepar
1     | Zmax=0.7, CV, Finit=0, denominator=20, mixing=2, selectivities, Lorenzen
2     | eval 1000
3     | regional recruitment
4     | movement
5     | time-invariant regional recruitment
6     | turn on otolith likelihood, do not estimate growth curve yet
7     | estimate growth variability
8     | -
9     | eval 500, crit 1e-2, increase Zmax=2.0, write plot.rep
10    | eval 10000, crit 1e-5, increase Zmax=3.0
11    | estimate growth curve, estimate M

**doitall.sh (BET 2023 diagnostic model)**

Phase | Settings
----- | ------------------------------------------------------------------------
0     | makepar
1     | Zmax=0.7, CV, Finit=0, denominator=20, mixing=2, selectivities, Lorenzen
2     | eval 100, crit 1e0, write plot.rep
3     | eval 200, regional recruitment
4     | movement
5     | time-invariant regional recruitment
6     | eval 300, turn on otolith likelihood, estimate growth curve
7     | eval 500, estimate growth variability
8     | eval 500, crit 1e-2, increase Zmax=1.0
9     | eval 500, crit 1e-2, increase Zmax=3.0
10    | eval 10000, crit 1e-5, estimate M
11    | eval 5000, crit 1e-5
