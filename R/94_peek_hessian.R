models <- dir()
models <- models[dir.exists(models)]

for(i in seq_along(models))
{
  targz <- file.path(models[i], "End.tar.gz")
  if(file.exists(targz))
  {
    to <- paste0(models[i], "_neigenvalues.txt")
    if(file.exists(to))
    {
      cat("          ", to, "already exists\n")
    }
    else
    {
      cat("Extracting", to, "\n")
      untar(targz, "neigenvalues")
      file.rename("neigenvalues", to)
    }
  }
}

# head -c5 *.txt
