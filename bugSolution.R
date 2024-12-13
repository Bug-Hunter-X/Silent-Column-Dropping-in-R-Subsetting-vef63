```R
# Improved subsetting that checks for missing columns and provides feedback
df <- data.frame(A = 1:3, B = 4:6)
cols_to_subset <- c("A", "C", "D")

# Check for missing columns
missing_cols <- setdiff(cols_to_subset, names(df))
if (length(missing_cols) > 0) {
  warning(paste("Columns", paste(missing_cols, collapse = ", "), "not found in data frame."))
}

# Subset, handling potential errors
subset_df <- df[, intersect(cols_to_subset, names(df)), drop = FALSE]

#Check if any columns were dropped
if(ncol(subset_df) < length(cols_to_subset)){
  cat("Some columns were dropped because they were not found in the original data frame.
")
}
print(subset_df)
```