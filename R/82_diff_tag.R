library(tools)  # md5sum

# Read filenames
tag <- dir("//penguin/assessments/yft/2023/model_runs/stepwise_shortnames",
           full=TRUE, recursive=TRUE, pattern="yft.tag")
tag <- data.frame(file=tag)
tag$md5sum <- substring(md5sum(tag$file), 1, 7)

# Indicate when same tag file is used
same <- character(nrow(tag))
for(i in 2:nrow(tag))
  same[i] <- if(identical(tag$md5sum[i], tag$md5sum[i-1])) "" else "diff"
tag$same <- same

# Format output
out <- transform(tag, file=basename(dirname(tag$file)))
names(out)[names(out) == "file"] <- "model"

write.csv(out, "diff_tag.csv", quote=FALSE, row.names=FALSE)
