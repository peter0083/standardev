pkgname <- "standardev"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('standardev')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("hello")
### * hello

flush(stderr()); flush(stdout())

### Name: hello
### Title: Hello, World!
### Aliases: hello

### ** Examples

hello()



cleanEx()
nameEx("standard_deviation")
### * standard_deviation

flush(stderr()); flush(stdout())

### Name: standard_deviation
### Title: Standard deivation calculator
### Aliases: standard_deviation

### ** Examples

vector_NHL_player_salaries <- c(4060000, 6590000, 5640000)
# use this vector as an input for standard_deviation function#' standard_deviation(vector_NHL_player_salaries)



cleanEx()
nameEx("standard_error")
### * standard_error

flush(stderr()); flush(stdout())

### Name: standard_error
### Title: Standard error calculator
### Aliases: standard_error

### ** Examples

vector_NHL_player_salaries <- c(4060000, 6590000, 5640000)
# use this vector as an input for standard_error function#' standard_error(vector_NHL_player_salaries)



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
