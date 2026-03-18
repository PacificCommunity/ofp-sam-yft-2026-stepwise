# Directories
penguin <- "//penguin/assessments/yft/2023/model_runs/stepwise/02_NewExe"
old.dir <- file.path(penguin, "02a_Nonzero_Maturity")
new.dir <- file.path(penguin, "02b_Version_2100")

# Old executable
old.par <- dir(old.dir, pattern="^[0-9][0-9]\\.par$", full=TRUE)
old.time <- file.mtime(old.par)
old.hrs <- c(0, diff(as.numeric(old.time))) / 3600
names(old.diff) <- basename(old.par)[-1]

# New executable
new.par <- dir(new.dir, pattern="^[0-9][0-9]\\.par$", full=TRUE)
new.time <- file.mtime(new.par)
new.hrs <- as.numeric((new.time - min(new.time)) / 3600)
new.diff <- diff(new.hrs)
names(new.diff) <- basename(new.par)[-1]

# Comparison table
runtime <- data.frame("2.0.7.0"=old.diff, "2.1.0.0"=new.diff, check.names=FALSE)
round(runtime, 1)
