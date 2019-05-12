app <- ShinyDriver$new("../")
app$snapshotInit("mytest")

# Input 'table1_rows_current' was set, but doesn't have an input binding.
# Input 'table1_rows_all' was set, but doesn't have an input binding.
app$setInputs(ycol = "Petal.Length")
app$snapshot()
# Input 'table1_rows_selected' was set, but doesn't have an input binding.
# Input 'table1_row_last_clicked' was set, but doesn't have an input binding.
# Input 'table1_cell_clicked' was set, but doesn't have an input binding.
# Input 'table1_rows_selected' was set, but doesn't have an input binding.
# Input 'table1_row_last_clicked' was set, but doesn't have an input binding.
# Input 'table1_cell_clicked' was set, but doesn't have an input binding.
