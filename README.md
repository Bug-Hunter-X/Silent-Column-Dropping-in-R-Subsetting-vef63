This repository demonstrates a subtle but common error in R when subsetting data frames using character vectors.  The code attempts to subset a data frame using a character vector that includes column names that do not exist.  R silently drops the non-existent columns, which can lead to unexpected behavior and difficult-to-find bugs. The solution provides a way to identify and handle such situations.