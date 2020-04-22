.onAttach <- function(lib, pkg) {
  ver <- read.dcf(file.path(lib, pkg, "DESCRIPTION"), "Version")
  # helper_msg <- paste("Consider using `ggdecor::` for each function call.")
  packageStartupMessage(paste(pkg, ver))
  options("ggdecor.options" = list(
    scipen = 10,
    quiet = TRUE))

  if (.Platform$OS.type == "windows")  { # nocov start
    if (interactive() || getOption("verbose"))
      packageStartupMessage("Registering Windows fonts with R")
      extrafont::loadfonts("win", quiet = TRUE)
  }

  if (getOption("ggdecor.loadfonts", default = FALSE)) {
    if (interactive() || getOption("verbose"))
    packageStartupMessage("Registering PDF & PostScript fonts with R")
    extrafont::loadfonts("pdf", quiet = TRUE)
    extrafont::loadfonts("postscript", quiet = TRUE)
  }

  fnt <- extrafont::fonttable()
  if (!any(grepl("Arial[ ]Narrow|Roboto[ ]Regular", fnt$FamilyName))) {
    packageStartupMessage("NOTE: Either Arial Narrow, Roboto or Sans fonts are required to use these themes.")
    packageStartupMessage("      Please use ggdecor::import_roboto() to install Roboto and")
    packageStartupMessage("      ggdecor::import_sans() to install Public Sans on your system.")
  } # nocov end
  #ggplot2::theme_set(theme_pub())
}
NULL
ggdecor_env <- new.env()


.onLoad <- function(libname = find.package("ggdecor"), pkgname = "ggdecor"){
  if(getRversion() >= "2.15.1") {
    utils::globalVariables(c("."))
  }
  invisible()
}
