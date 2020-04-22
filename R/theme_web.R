#' @title A precise & pristine [ggplot2] theme with opinionated defaults and an emphasis on typography
#' @description A [ggplot2] theme with altered defaults of typography, margins, axis.
#'
#' @md
#' @section Why Arial Narrow?:
#' First and foremost, Arial Narrow is generally installed by default or readily
#' available on any modern system, so it's "free", and it is a condensed font
#' with solid default kerning pairs and geometric numbers.
#'
#'
#' @section Gotchas:
#' There are distinctions between font names and various devices. Names that work
#' for display graphics devices and bitmap ones such as `png` may not work well
#' for PostScript or PDF ones. You may need two versions of a font-based
#' theme function for them to work in a particular situation. This situation
#' usually only arises when using a newer font with many weights but somewhat
#' irregular internal font name patterns.
#'
#' There is an option `SciencesPo.loadfonts` which -- if set to `TRUE` -- will
#' call `extrafont::loadfonts()` to register non-core fonts with R PDF & PostScript
#' devices. If you are running under Windows, the package calls the same function
#' to register non-core fonts with the Windows graphics device.
#'
#' @md
#' @param base_family,base_size base font family and size
#' @param plot_title_family,plot_title_face,plot_title_size,plot_title_margin plot title family, face, size and margi
#' @param subtitle_family,subtitle_face,subtitle_size plot subtitle family, face and size
#' @param subtitle_margin plot subtitle margin bottom (single numeric value)
#' @param strip_text_family,strip_text_face,strip_text_size facet label font family, face and size
#' @param caption_family,caption_face,caption_size,caption_margin plot caption family, face, size and margin
#' @param axis_title_family,axis_title_face,axis_title_size axis title font family, face and size
#' @param axis_title_just axis title font justification, one of `[blmcrt]`
#' @param plot_margin plot margin (specify with [ggplot2::margin()])
#' @param grid_col,axis_col grid & axis colors; both default to `#cccccc`
#' @param grid panel grid (`TRUE`, `FALSE`, or a combination of `X`, `x`, `Y`, `y`)
#' @param axis_text_size font size of axis text
#' @param axis add x or y axes? `TRUE`, `FALSE`, "`xy`"
#' @param ticks ticks if `TRUE` add ticks
#' @export
#' @examples \dontrun{
#' library(ggplot2)
#' library(dplyr)
#'
#' # seminal scatterplot
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point() +
#'   labs(x="Fuel effiiency (mpg)", y="Weight (tons)",
#'        title="Seminal ggplot2 scatterplot example",
#'        subtitle="A plot that is only useful for demonstration purposes",
#'        caption="Brought to you by 'ggplot2'") +
#'   theme_web()
#'
#' # seminal bar chart
#'
#' update_geom_font_defaults()
#'
#' count(mpg, class) %>%
#'   ggplot(aes(class, n)) +
#'   geom_col() +
#'   geom_text(aes(label=n), nudge_y=3) +
#'   labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
#'        title="Seminal ggplot2 bar chart example",
#'        subtitle="A plot that is only useful for demonstration purposes",
#'        caption="Brought to you by 'ggplot2'") +
#'   theme_web(grid="Y") +
#'   theme(axis.text.y=element_blank())
#' }
theme_web <- function(base_family="Arial Narrow", base_size = 11.5,
                        plot_title_family=base_family, plot_title_size = 18,
                        plot_title_face="bold", plot_title_margin = 10,
                        subtitle_family=base_family, subtitle_size = 12,
                        subtitle_face = "plain",
                        subtitle_margin = 15,
                        strip_text_family = base_family,
                         strip_text_size = 12,
                        strip_text_face = "plain",
                        caption_family = base_family,
                        caption_size = 9,
                        caption_face = "italic", caption_margin = 10,
                        axis_text_size = base_size,
                        axis_title_family = subtitle_family, axis_title_size = 9,
                        axis_title_face = "plain", axis_title_just = "rt",
                        plot_margin = margin(t = 10L, r = 10L, b = 10L, l = 10L),
                        grid_col = "#b7b7b7", grid = TRUE,
                        axis_col = "#515151", axis = FALSE, ticks = TRUE) {

  ret <- ggplot2::theme_minimal(base_family=base_family, base_size=base_size)

  ret <- ret + theme(legend.background=ggplot2::element_blank())
  ret <- ret + theme(legend.key=ggplot2::element_blank())
  ret <- ret + theme(legend.title=ggplot2::element_blank())

  ret <- ret + theme(plot.tag = ggplot2::element_text(size = base_size * 1.5,
                                   hjust = 0L,
                                   vjust = 0L,
                                   face = "bold",
                                   margin = ggplot2::margin(b = 10L)))

  if (inherits(grid, "character") | grid == TRUE) {

    ret <- ret + theme(panel.grid=ggplot2::element_line(color=grid_col, size=0.20))
    ret <- ret + theme(panel.grid.major=ggplot2::element_line(color=grid_col, size=0.20))
    ret <- ret + theme(panel.grid.minor=ggplot2::element_line(color=grid_col, size=0.15))

    if (inherits(grid, "character")) {
      if (regexpr("X", grid)[1] < 0) ret <- ret + theme(panel.grid.major.x=ggplot2::element_blank())
      if (regexpr("Y", grid)[1] < 0) ret <- ret + theme(panel.grid.major.y=ggplot2::element_blank())
      if (regexpr("x", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.x=ggplot2::element_blank())
      if (regexpr("y", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.y=ggplot2::element_blank())
    }

  } else {
    ret <- ret + theme(panel.grid=ggplot2::element_blank())
  }

  if (inherits(axis, "character") | axis == TRUE) {
    ret <- ret + theme(axis.line=ggplot2::element_line())
    if (inherits(axis, "character")) {
      axis <- tolower(axis)
      if (regexpr("x", axis)[1] < 0) {
        ret <- ret + theme(axis.line.x=ggplot2::element_blank())
      } else {
        ret <- ret + theme(axis.line.x=ggplot2::element_line(colour = axis_col,
                                                             size = .75,
                                                             linetype = NULL,
                                                             lineend = NULL))
      }
      if (regexpr("y", axis)[1] < 0) {
        ret <- ret + theme(axis.line.y=ggplot2::element_blank())
      } else {
        ret <- ret + theme(axis.line.y=ggplot2::element_line(colour = axis_col,
                                                             size = .75,
                                                             linetype = NULL,
                                                             lineend = NULL))
      }
    } else {
      ret <- ret + theme(axis.line.x=ggplot2::element_line(colour = axis_col,
                                                           size = .75,
                                                           linetype = NULL,
                                                           lineend = NULL))
      ret <- ret + theme(axis.line.y=ggplot2::element_line())
    }
  } else {
    ret <- ret + theme(axis.line=ggplot2::element_line())
  }

  if (!ticks) {
    ret <- ret + theme(axis.ticks = ggplot2::element_blank())
    ret <- ret + theme(axis.ticks.x = ggplot2::element_blank())
    ret <- ret + theme(axis.ticks.y = ggplot2::element_blank())
  } else {
    ret <- ret + theme(axis.ticks = ggplot2::element_line())
    ret <- ret + theme(axis.ticks.length = grid::unit(4L, "pt"))
    ret <- ret + theme(axis.ticks.x = ggplot2::element_line(colour = axis_col,
                                                            size = NULL,
                                                            linetype = NULL,
                                                            lineend = NULL))
    ret <- ret + theme(axis.ticks.y = ggplot2::element_blank())
  }

  xj <- switch(tolower(substr(axis_title_just, 1, 1)), b=0, l=0, m=0.5, c=0.5, r=1, t=1)
  yj <- switch(tolower(substr(axis_title_just, 2, 2)), b=0, l=0, m=0.5, c=0.5, r=1, t=1)

  ret <- ret + theme(axis.text.x=ggplot2::element_text(size=axis_text_size, margin=margin(t=1)))
  ret <- ret + theme(axis.text.y=ggplot2::element_text(size=axis_text_size, margin=margin(r=1)))
  ret <- ret + theme(axis.title=ggplot2::element_text(size=axis_title_size, family=axis_title_family))
  ret <- ret + theme(axis.title.x=ggplot2::element_text(hjust=xj, size=axis_title_size,
                                               family=axis_title_family, face=axis_title_face))
  ret <- ret + theme(axis.title.y=ggplot2::element_text(hjust=yj, size=axis_title_size,
                                               family=axis_title_family, face=axis_title_face))
  ret <- ret + theme(axis.title.y.right=ggplot2::element_text(hjust=yj, size=axis_title_size, angle=90,
                                              family=axis_title_family, face=axis_title_face))
  ret <- ret + theme(strip.text=ggplot2::element_text(hjust=0, size=strip_text_size,
                                             face=strip_text_face, family=strip_text_family))
  ret <- ret + theme(panel.spacing=grid::unit(2, "lines"))
  ret <- ret + theme(plot.title=ggplot2::element_text(hjust=0, size=plot_title_size,
                                             margin=margin(b=plot_title_margin),
                                             family=plot_title_family, face=plot_title_face))
  ret <- ret + theme(plot.subtitle=ggplot2::element_text(hjust=0, size=subtitle_size,
                                                margin=margin(b=subtitle_margin),
                                                family=subtitle_family, face=subtitle_face))
  ret <- ret + theme(plot.caption=ggplot2::element_text(hjust=1, size=caption_size,
                                               margin=margin(t=caption_margin),
                                               family=caption_family, face=caption_face))
  ret <- ret + theme(plot.margin = plot_margin)

  ret
}
NULL







#' The SciencesPo [ggplot2] theme defaults
#'
#' \code{set_urbn_defaults} provides a [ggplot2] theme formatted according to the
#' Urban Institute style guide, with sensible defaults.
#'
#' @param style The default theme style for the R session. "print" or "map".
#' @import extrafont
#' @import ggrepel
#' @md
#' @export
set_decor_defaults <- function(style = "web") {

  # set deault theme to theme_*()
  if (style == "web") {
    ggplot2::theme_set(theme_web())
  } else if (style == "pub") {
    ggplot2::theme_set(theme_roboto())
  } else {
    stop('Invalid "style" argument. Valid styles are: ',
         '"web" and "pub".',
         call. = FALSE
    )
  }

  # add Lato font to text and label geoms ---------------------------

  ggplot2::update_geom_defaults("text", list(family = "Arial Narrow"))
  ggplot2::update_geom_defaults("label", list(family = "Arial Narrow"))
  ggplot2::update_geom_defaults("text_repel", list(family = "Arial Narrow"))
  ggplot2::update_geom_defaults("label_repel", list(family = "Arial Narrow"))

  # set default color scales for continuous variables -----------------------

  options(
    ggplot2.continuous.colour = "gradient",
    ggplot2.continuous.fill = "gradient"
  )

  # set default colors for monochromatic geoms ------------------------------

  ggplot2::update_geom_defaults("bar", list(fill = "#1696d2"))
  ggplot2::update_geom_defaults("col", list(fill = "#1696d2"))
  ggplot2::update_geom_defaults("point", list(colour = "#1696d2"))
  ggplot2::update_geom_defaults("line", list(colour = "#1696d2"))
  ggplot2::update_geom_defaults("step", list(colour = "#1696d2"))
  ggplot2::update_geom_defaults("path", list(colour = "#1696d2"))
  ggplot2::update_geom_defaults("boxplot", list(fill = "#1696d2"))
  ggplot2::update_geom_defaults("density", list(fill = "#1696d2"))
  ggplot2::update_geom_defaults("violin", list(fill = "#1696d2"))

  # set default colors for monochromatic stats ------------------------------

  ggplot2::update_stat_defaults("count", list(fill = "#1696d2"))
  ggplot2::update_stat_defaults("boxplot", list(fill = "#1696d2"))
  ggplot2::update_stat_defaults("density", list(fill = "#1696d2"))
  ggplot2::update_stat_defaults("ydensity", list(fill = "#1696d2"))
}
NULL
