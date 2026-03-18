library(tools)  # md5sum

species.ini <- "yft.ini"
folder <- "//penguin/assessments/yft/2023/model_runs/stepwise_shortnames"

# Read a specific life history parameter from ini file
read <- function(x, label, skip=1, i=1)
{
  if(is.list(x))
  {
    sapply(x, read, label=label, skip=skip, i=i)
  }
  else
  {
    pos <- which(x == label) + skip
    scan(text=x[pos], quiet=TRUE)[i]
  }
}

# Read filenames
ini <- dir(folder, full=TRUE, pattern=species.ini, recursive=TRUE)
ini <- data.frame(file=ini)

# Read files
txt <- lapply(ini$file, readLines)

# Read M
ini$m1 <- read(txt, label="# natural mortality (per year)")
ini$m2 <- read(txt, label="# age_pars", skip=5)

# Read VB parameters
ini$l1 <- read(txt, "# ML1")
ini$l2 <- read(txt, "# ML2")
ini$k <- read(txt, "# K (per year)")
ini$sd1 <- read(txt, "# Generic SD of length at age")
ini$sd2 <- read(txt, "# Length-dependent SD")

# Read LW parameters
ini$a <- read(txt, "# Length-weight parameters")
ini$b <- read(txt, "# Length-weight parameters", i=2)

# Size and lines
ini$size <- file.info(ini$file)$size
ini$lines <- sapply(txt, length)

# Calculate md5sum and same
ini$md5sum <- substring(md5sum(ini$file), 1, 7)
same <- character(nrow(ini))
for(i in 2:nrow(ini))
  same[i] <- if(identical(ini$md5sum[i], ini$md5sum[i-1])) "" else "diff"
ini$same <- same

# Format output
out <- transform(ini, file=basename(dirname(file)))
names(out)[names(out) == "file"] <- "model"

write.csv(out, "diff_ini.csv", quote=FALSE, row.names=FALSE)
