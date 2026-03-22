# 02_NewExe

## 02a_New_Exe

**Current way to specify initial Z = 1.0*M, i.e. initial F = 0.**
```
2 128 10 -> 2 128 100
```

**Current way to specify CPUE sigma.**
```
-33 92 61    -33 92 29
-34 92 77    -34 92 25
-35 92 79 -> -35 92 25
-36 92 82    -36 92 25
-37 92 74    -37 92 26
```
Conversion:
```
sigma2old <- function(sigma)
{
  penalty <- 1 / (2*sigma^2)
  flag.value <- round(10 * penalty)
  flag.value
}
old2new <- function(old)
{
  sigma <- sqrt(5 / old)
  new.value <- round(100 * sigma)
  new.value
}
old2new(c(61, 77, 79, 82, 74))
```
