library(tools)  # md5sum

# Read filenames
frq <- dir("//penguin/assessments/yft/2023/model_runs/stepwise_shortnames",
           full=TRUE, recursive=TRUE, pattern="yft.frq")
frq <- data.frame(file=frq)
frq$md5sum <- substring(md5sum(frq$file), 1, 7)

# Indicate when same frq file is used
same <- character(nrow(frq))
for(i in 2:nrow(frq))
  same[i] <- if(identical(frq$md5sum[i], frq$md5sum[i-1])) "" else "diff"
frq$same <- same

# Format output
out <- transform(frq, file=basename(dirname(frq$file)))
names(out)[names(out) == "file"] <- "model"

write.csv(out, "diff_frq.csv", quote=FALSE, row.names=FALSE)
