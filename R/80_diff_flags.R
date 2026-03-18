library(FLR4MFCL)

# 1  Read directory names
stepdir <- "//penguin/assessments/yft/2023/model_runs/stepwise_shortnames"

# 2  Compare flags
diffs <- diffFlagsStepwise(stepdir)

# 3  Export to object
owidth <- options(width=1000)
txt <- capture.output(print(diffs, right=FALSE, row.names=FALSE))
txt <- trimws(txt, "right")
options(owidth)
if(txt[length(txt)] == "")
  txt <- txt[-length(txt)]  # remove final empty quotes

# 4  Export to file
cat(txt, sep="\n", file="diff_flags.txt")
