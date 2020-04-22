#' A precise & pristine [ggplot2] black board theme with opinionated defaults and an emphasis on typoghraphy
#'
#'
#' There is an option `SciencesPo.loadfonts` which -- if set to `TRUE` -- will
#' call `extrafont::loadfonts()` to register non-core fonts with R PDF & PostScript
#' devices. If you are running under Windows, the package calls the same function
#' to register non-core fonts with the Windows graphics device.
#' @inheritParams SciencesPo::theme_web
#' @rdname theme_web
#' @export
#' @examples
#' \dontrun{
#' library(ggplot2)
#'
#' # seminal scatterplot
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point() +
#'   labs(x="Fuel effiiency (mpg)", y="Weight (tons)",
#'        title="Seminal ggplot2 scatterplot example",
#'        subtitle="A plot that is only useful for demonstration purposes",
#'        caption="Brought to you by 'ggplot2'") +
#'   theme_nero()
#'   }
theme_nero <- function (base_family = "Arial Narrow", base_size = 11.5,
                             plot_title_family = base_family,
                             plot_title_size = 18,
                             plot_title_face = "bold",
                             plot_title_margin = 10,
                            subtitle_family = if (.Platform$OS.type == "windows") "Arial Narrow" else "Arial Narrow",
                             subtitle_size = 13, subtitle_face = "plain", subtitle_margin = 15,
                             strip_text_family = base_family, strip_text_size = 12, strip_text_face = "plain",
                             caption_family = if (.Platform$OS.type == "windows") "Arial Narrow" else "Arial Narrow",
                             caption_size = 9, caption_face = "plain", caption_margin = 10,
                             axis_text_size = base_size, axis_title_family = base_family,
                             axis_title_size = 9, axis_title_face = "plain", axis_title_just = "rt",
                             plot_margin = margin(10, 10, 10, 10), grid = TRUE, axis = FALSE, ticks = FALSE)  {

  grid_col <- axis_col <- "#333333"

  def_fore <- "#57c1f1"

  ggplot2::update_geom_defaults("point", list(colour = def_fore))
  ggplot2::update_geom_defaults("line", list(colour = def_fore))
  ggplot2::update_geom_defaults("area", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("rect", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("density", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("bar", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("col", list(colour = def_fore, fill=def_fore))
  ggplot2::update_geom_defaults("text", list(colour = def_fore))

  ret <- ggplot2::theme_minimal(base_family=base_family, base_size=base_size)

  ret <- ret + theme(legend.background=ggplot2::element_blank())
  ret <- ret + theme(legend.key=ggplot2::element_blank())
  ret <- ret + theme(legend.title=ggplot2::element_blank())


  if (inherits(grid, "character") | grid == TRUE) {

    ret <- ret + theme(panel.grid=ggplot2::element_line(color=grid_col, size=0.25))
    ret <- ret + theme(panel.grid.major=ggplot2::element_line(color=grid_col, size=0.25))
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
    ret <- ret + theme(axis.line=ggplot2::element_line(color="white", size=0.15))
    if (inherits(axis, "character")) {
      axis <- tolower(axis)
      if (regexpr("x", axis)[1] < 0) {
        ret <- ret + theme(axis.line.x=ggplot2::element_blank())
      } else {
        ret <- ret + theme(axis.line.x=ggplot2::element_line(color=axis_col, size=0.15))
      }
      if (regexpr("y", axis)[1] < 0) {
        ret <- ret + theme(axis.line.y=ggplot2::element_blank())
      } else {
        ret <- ret + theme(axis.line.y=ggplot2::element_line(color=axis_col, size=0.15))
      }
    } else {
      ret <- ret + theme(axis.line.x=ggplot2::element_line(color=axis_col, size=0.15))
      ret <- ret + theme(axis.line.y=ggplot2::element_line(color=axis_col, size=0.15))
    }
  } else {
    ret <- ret + theme(axis.line=ggplot2::element_blank())
  }

  if (!ticks) {
    ret <- ret + theme(axis.ticks = ggplot2::element_blank())
    ret <- ret + theme(axis.ticks.x = ggplot2::element_blank())
    ret <- ret + theme(axis.ticks.y = ggplot2::element_blank())
  } else {
    ret <- ret + theme(axis.ticks = ggplot2::element_line(size=0.15))
    ret <- ret + theme(axis.ticks.x = ggplot2::element_line(size=0.15))
    ret <- ret + theme(axis.ticks.y = ggplot2::element_line(size=0.15))
    ret <- ret + theme(axis.ticks.length = grid::unit(5, "pt"))
  }

  xj <- switch(tolower(substr(axis_title_just, 1, 1)), b=0, l=0, m=0.5, c=0.5, r=1, t=1)
  yj <- switch(tolower(substr(axis_title_just, 2, 2)), b=0, l=0, m=0.5, c=0.5, r=1, t=1)

  ret <- ret + theme(axis.text.x=ggplot2::element_text(size=axis_text_size, margin=margin(t=0)))
  ret <- ret + theme(axis.text.y=ggplot2::element_text(size=axis_text_size, margin=margin(r=0)))
  ret <- ret + theme(axis.title=ggplot2::element_text(size=axis_title_size, family=axis_title_family))
  ret <- ret + theme(axis.title.x=ggplot2::element_text(hjust=xj, size=axis_title_size,
                                               family=axis_title_family, face=axis_title_face))
  ret <- ret + theme(axis.title.y=ggplot2::element_text(hjust=yj, size=axis_title_size,
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
  ret <- ret + theme(plot.margin=plot_margin)

  bkgrnd <- "#1e1e1e"
  fgrnd <- "#e0e0e0"

  ret <- ret +
    theme(rect =  ggplot2::element_rect(fill = bkgrnd, color = bkgrnd)) +
    theme(plot.background = ggplot2::element_rect(fill = bkgrnd, color = bkgrnd)) +
    theme(panel.background = ggplot2::element_rect(fill = bkgrnd, color = bkgrnd)) +
    theme(rect =  ggplot2::element_rect(fill = bkgrnd, color = bkgrnd)) +
    theme(text =  ggplot2::element_text(color = fgrnd)) +
    theme(axis.text =  ggplot2::element_text(color = fgrnd)) +
    theme(title =  ggplot2::element_text(color = "white")) +
    theme(plot.title =  ggplot2::element_text(color = "white")) +
    theme(plot.subtitle =  ggplot2::element_text(color = "#8e8e93")) +
    theme(line = ggplot2::element_line(color = fgrnd)) +
    theme(axis.ticks = ggplot2::element_line(color = fgrnd))
  ret
}

#' Change geom defaults from black to white for the modern theme
#'
#' @export
modern_geom_defaults <- function() {

  geoms <- c("abline", "area", "bar", "boxplot", "col", "crossbar",
             "density", "dotplot", "errorbar", "errorbar",
             "hline", "label", "line", "linerange",
             "map", "path", "point", "polygon", "rect", "ribbon", "rug", "segment",
             "step", "text", "tile", "violin", "vline")

  for (g in geoms) {
    message(g)
    update_geom_defaults(g, list(colour = "white", fill = "white"))
  }

}
NULL
