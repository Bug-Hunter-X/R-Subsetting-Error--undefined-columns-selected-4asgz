```r
# Improved code to handle cases where specified columns might not exist.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_subset <- c("A", "D", "E")

# Use intersect to only select existing columns
valid_cols <- intersect(cols_to_subset, colnames(df))

# Handle cases where no valid columns are found
if (length(valid_cols) == 0) {
  subset_df <- data.frame() # Return an empty data frame
  warning("No matching columns found.")
} else {
  subset_df <- df[, valid_cols]
}
```