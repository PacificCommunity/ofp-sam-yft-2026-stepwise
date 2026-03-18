# Last run 18 March 2026
# condor_status -server -constraint OpSys==\"LINUX\" > flock.dat

# Read flock data
flock <- readLines("~/flock.dat")
flock <- flock[seq(grep("Machines", flock) - 1)]
flock <- flock[flock != ""]
flock <- read.table(text=flock, header=TRUE)

# Subset usable flock
nrow(flock)  # 79 total
flock <- flock[flock$Memory > 7600,]
flock <- flock[flock$Memory > 12*1024,]
avoid <- c("slot1@nouofpcand27",
           "slot1@nouofpcand28",
           "slot1@nouofpcand29",
           "slot1@nouofpcand30",
           "slot1_1@nouofpcand17.corp.spc.int",
           "slot1_1@suvofpcand03.corp.spc.int",
           "slot1_1@suvofpcand31.corp.spc.int")
flock <- flock[!flock$Name %in% avoid,]
flock$LoadAv <- flock$OpSys <- flock$Arch <- NULL
row.names(flock) <- NULL
nrow(flock)  # 66 left

# Clean up names
flock$Name <- sub("slot1@", "", flock$Name)
flock$Name <- sub(".corp.spc.int", "", flock$Name)
flock$Name <- sub("ofpcand", "", flock$Name)
flock$City <- substring(flock$Name, 1, 3)
flock$Node <- substring(flock$Name, 4, 6)

# Overview
table(flock$City)
# nou suv
#  26  40

# Memory criterion is important
suva <- flock[flock$City == "suv",]
suva <- suva[order(suva$Memory),]
row.names(suva) <- NULL
suva

noumea <- flock[flock$City == "nou",]
noumea <- noumea[order(noumea$Memory),]
row.names(noumea) <- NULL
noumea
