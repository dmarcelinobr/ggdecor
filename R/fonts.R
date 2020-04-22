
#' @title Update matching font defaults for text geoms
#'
#' @description Updates [ggplot2::geom_label] and [ggplot2::geom_text] font defaults
#'
#' @param family,face,size,color font family name, face, size and color
#' @export
update_geom_font_defaults <- function(family="Arial Narrow", face="plain", size=3.5,
                                      color = "#2b2b2b") {
  update_geom_defaults("text", list(family=family, face=face, size=size, color=color))
  update_geom_defaults("label", list(family=family, face=face, size=size, color=color))
}


#' @rdname Arial-Narrow
#' @md
#' @title Arial Narrow font name R variable aliases
#' @description `font_an` == "`Arial Narrow`"
#' @format length 1 character vector
#' @export
font_an <- "Arial Narrow"





#' @title Import roboto fonts
#' Make sure the roboto fonts are in your path
#' @md
#' @family fonts
#' @rdname import_roboto
#' @importFrom extrafont font_import
#' @export
#' @examples \dontrun{
#' import_roboto()
#' }
import_roboto <- function() {

  rr_font_dir <- system.file("fonts", "roboto", package = "SciencesPo")

  suppressWarnings(suppressMessages(extrafont::font_import(rr_font_dir, prompt=FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      rr_font_dir)
  )

}



#' @rdname Roboto
#' @md
#' @title Roboto regular font name R variable aliases
#' @description `font_roboto` == "`Roboto Regular`"
#' @format length 1 character vector
#' @export
font_roboto <- "Roboto Regular"



#' @rdname Roboto
#' @md
#' @title Roboto bold font name R variable aliases
#' @description `font_roboto_bold` == "`Roboto Bold`"
#' @format length 1 character vector
#' @export
font_roboto_bold <- "Roboto Bold"



#' @rdname Roboto
#' @md
#' @title Roboto light font name R variable aliases
#' @description `font_roboto_light` == "`Roboto Light`"
#' @format length 1 character vector
#' @importFrom extrafont font_import
#' @export
font_roboto_light <- "Roboto Light"


#' @rdname Roboto
#' @md
#' @title Roboto thin font name R variable aliases
#' @description `font_roboto_thin` == "`Roboto Thin`"
#' @format length 1 character vector
#' @importFrom extrafont font_import
#' @export
font_roboto_thin <- "Roboto Thin"




import_sans <- function() {

  sr_font_dir <- system.file("fonts", "sans", package="SciencesPo")

  suppressWarnings(suppressMessages(extrafont::font_import(sr_font_dir, prompt=FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      sr_font_dir)
  )

}


#' @rdname PublicSans
#' @md
#' @title Public Sans regular font name R variable aliases
#' @description `font_sans` == "`Public Sans`"
#' @format length 1 character vector
#' @export
font_sans <- "Public Sans"



#' @rdname PublicSans
#' @md
#' @title Public Sans bold font name R variable aliases
#' @note `font_sans_bold` (a.k.a. "`Public Sans Bold`") is not available on
#'     Windows and will throw a warning if used in plots.
#' @description `font_sans_bold` == "`Public Sans Bold``"
#' @format length 1 character vector
#' @export
font_sans_bold <- "Public Sans Bold"


#' @rdname PublicSans
#' @md
#' @title Public Sans Light font name R variable aliases
#' @description `font_sans_light` == "`Public Sans Light`"
#' @format length 1 character vector
#' @export
font_sans_light <- "Public Sans Light"


#' @rdname PublicSans
#' @md
#' @title Public Sans Thin font name R variable aliases
#' @description `font_sans_thin` == "`Public Sans Thin`"
#' @format length 1 character vector
#' @export
font_sans_thin <- "Public Sans Thin"


#' @rdname PublicSans
#' @md
#' @title Public Sans Humor font name R variable aliases
#' @description `font_sans_humor` == "`Public Sans Humor`"
#' @format length 1 character vector
#' @importFrom extrafont font_import
#' @export
font_sans_humor <- "Public Sans Humor"




import_xkcd <- function() {

  xkcd_font_dir <- system.file("fonts", "xkcd", package="SciencesPo")

  suppressWarnings(suppressMessages(extrafont::font_import(xkcd_font_dir, prompt=FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      xkcd_font_dir)
  )

}


#' @rdname xkcd
#' @md
#' @title xkcd regular font name R variable aliases
#' @description `font_xkcd` == "`xkcd`"
#' @format length 1 character vector
#' @export
font_xkcd <- "xkcd"
