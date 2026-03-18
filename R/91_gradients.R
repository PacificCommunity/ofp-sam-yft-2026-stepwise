read.gradient <- function(file)
{
  txt <- readLines(file)
  start <- grep("Maximum magnitude gradient value", txt)
  gradient <- as.numeric(txt[start+1])
  gradient
}

par(mfrow=c(2,2))

################################################################################

# BET
folder <- file.path("//penguin/assessments/bet/2023/model_runs/stepwise",
                    "02PreCatchCond/B07eCCRealEffProj")
parfiles <- dir(folder, pattern="\\.par$", full=TRUE)
parfiles <- grep("00.par", parfiles, invert=TRUE, value=TRUE)  # remove 00.par
gradient <- sapply(parfiles, read.gradient)
names(gradient) <- file_path_sans_ext(basename(parfiles))
grad <- data.frame(Phase=as.integer(names(gradient)),
                   Gradient=log10(gradient))
plot(grad, type="o", main="BET - B07eCCRealEffProj", ylim=c(-5.2, 0.2))
points(c(8, 11), c(-2, -5), pch=17, col=2)

################################################################################

# YFT - relaxed
folder <- file.path("//penguin/assessments/yft/2023/model_runs/stepwise",
                    "04_CatchCond/04b_Catch_Cond_New_CPUE")
parfiles <- dir(folder, pattern="\\.par$", full=TRUE)
parfiles <- grep("00.par", parfiles, invert=TRUE, value=TRUE)  # remove 00.par
gradient <- sapply(parfiles, read.gradient)
names(gradient) <- file_path_sans_ext(basename(parfiles))
grad <- data.frame(Phase=as.integer(names(gradient)),
                   Gradient=log10(gradient))
plot(grad, type="o", main="YFT - 04b_Catch_Cond_New_CPUE (relaxed)",
     ylim=c(-5.2, 0.2))
points(c(2, 9, 10), c(0, -1, -2), pch=17, col=2)

################################################################################

# YFT - hessian
folder <- file.path("//penguin/assessments/yft/2023/model_runs/hessian",
                    "04_CatchCond/04b_Catch_Cond_New_CPUE")
parfiles <- dir(folder, pattern="\\.par$", full=TRUE)
parfiles <- grep("00.par", parfiles, invert=TRUE, value=TRUE)  # remove 00.par
gradient <- sapply(parfiles, read.gradient)
names(gradient) <- file_path_sans_ext(basename(parfiles))
grad <- data.frame(Phase=as.integer(names(gradient)),
                   Gradient=log10(gradient))
plot(grad, type="o", main="YFT - 04b_Catch_Cond_New_CPUE (hessian)",
     ylim=c(-5.2, 0.2))
points(c(2, 9, 10), c(0, -1, -5), pch=17, col=2)

################################################################################

# YFT - hessian strict
folder <- file.path("//penguin/assessments/yft/2023/model_runs/hessian_strict",
                    "04_CatchCond/04b_Catch_Cond_New_CPUE")
parfiles <- dir(folder, pattern="\\.par$", full=TRUE)
parfiles <- grep("00.par", parfiles, invert=TRUE, value=TRUE)  # remove 00.par
gradient <- sapply(parfiles, read.gradient)
names(gradient) <- file_path_sans_ext(basename(parfiles))
grad <- data.frame(Phase=as.integer(names(gradient)),
                   Gradient=log10(gradient))
plot(grad, type="o", main="YFT - 04b_Catch_Cond_New_CPUE (hessian strict)",
     ylim=c(-5.2, 0.2))
points(c(2, 10), c(-1, -5), pch=17, col=2)
