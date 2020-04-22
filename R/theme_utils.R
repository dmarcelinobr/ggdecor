#' @title ggplot2 adjustments
#' @description Position and features adjustmentshow to dress or undress plots.
#' @param angle A numerice value for angle adjusting
#' @param position A string values for position adjusting
#' @keywords ggplot2
#' @name ggplot2-adjusts
#' @export
`align_title_left` <- function ()
  theme(plot.title = element_text(hjust = 0))


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`align_title_right` <- function ()
  theme(plot.title = element_text(hjust = 1))



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_title` <- function ()
  theme(plot.title = element_blank())


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_y_gridlines` <- function()
  theme(panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank())


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_x_gridlines` <- function ()
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank())


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_major_x_gridlines` <- function ()
  theme(panel.grid.major.x = element_blank())


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_major_y_gridlines` <- function ()
  theme(panel.grid.major.y = element_blank())

#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_major_gridlines` <- function ()
  theme(panel.grid.major = element_blank())


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_minor_x_gridlines` <- function ()
  theme(panel.grid.minor.x = element_line())


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_minor_y_gridlines` <- function ()
  theme(panel.grid.minor.y = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_minor_gridlines` <- function ()
  theme(panel.grid.minor.x = element_blank(),
        panel.grid.minor.y = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_gridlines` <- function ()
  theme(panel.grid.major.x = element_blank(),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.y = element_blank(),
        panel.grid.minor.y = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`rotate_axes_text` <- function (angle)
  theme(axis.text = element_text(angle = angle, hjust = 1L))



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`rotate_x_text` <- function (angle)
  theme(axis.text.x = element_text(angle = angle, hjust = 1L))


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`rotate_y_text` <- function (angle)
  theme(axis.text.y = element_text(angle = angle, hjust = 1L))




#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_axes` <- function()
  theme(axis.line = element_blank(),
        axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_x_axis` <- function()
  theme(axis.line.x = element_blank(),
        axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank())


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_y_axis` <- function()
  theme(axis.line.y = element_blank(),
        axis.title.y = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_x_line` <- function()
  theme(axis.line.x = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_y_line` <- function()
  theme(axis.line.y = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_x_text` <- function ()
  theme(axis.text.x = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_y_text` <- function ()
  theme(axis.text.y = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_ticks` <- function ()
  theme(axis.ticks = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_x_ticks` <- function ()
  theme(axis.ticks.x = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_y_ticks` <- function ()
  theme(axis.ticks.y = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_axes_titles` <- function () theme(axis.title = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_x_title` <- function () theme(axis.title.x = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_y_title` <- function() theme(axis.title.y = element_blank())



#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`move_legend` <- function(position)
  theme(legend.position = position)


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`legend_bottom` <- function () move_legend('bottom')


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`legend_top` <- function () move_legend('top')


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`legend_left` <- function () move_legend('left')


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`legend_right` <- function () move_legend('right')


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_legend` <- function () move_legend('none')


#' @rdname ggplot2-adjusts
#' @keywords ggplot2
#' @export
`no_legend_title` <- function () theme(legend.title = element_blank())
NULL



#' The SciencesPo [ggplot2] theme
#'
#' Adds tick axes and axes labels
#'
#' @param axis Axis to drop. "x", "y", or "both"
#'
#' @md
#' @export
add_axis <- function(axis = "y") {

  if (axis == "x") {

    ggplot2::theme(axis.line.x = ggplot2::element_line(colour = "#333000",
                                                       size = NULL,
                                                       linetype = NULL,
                                                       lineend = NULL),
                   axis.line.y = ggplot2::element_blank())

  } else if (axis == "y") {

    ggplot2::theme(axis.line.x = ggplot2::element_blank(),
                   axis.line.y = ggplot2::element_line(colour = "#333000",
                                                       size = NULL,
                                                       linetype = NULL,
                                                       lineend = NULL)
    )

  } else if (axis == "both") {

    ggplot2::theme(axis.line.x = ggplot2::element_line(colour = "#333000",
                                                       size = NULL,
                                                       linetype = NULL,
                                                       lineend = NULL),
                   axis.line.y = ggplot2::element_line(colour = NULL,
                                                       size = NULL,
                                                       linetype = NULL,
                                                       lineend = NULL)
    )

  } else {

    stop('Invalid "axis" argument. Valid arguments are: ',
         '"x", "y", and "both"',
         call. = FALSE)
  }
}
NULL





#' get_legend
#'
#' @param ggplot_object a ggplot
#'
#' @return a ggplot legend
#' @export
#'
get_legend <- function(ggplot_object) {

  # if NULL then return NULL
  if (is.null(ggplot_object)) return(NULL)

  # remove margin around legend
  temp <- ggplot_object +
    ggplot2::theme(legend.margin = ggplot2::margin(t = 0L, r = 0L, b = 0L, l = 0L, "pt"))

  # extract the legend
  temp <- ggplot2::ggplot_gtable(ggplot2::ggplot_build(temp))
  legend <- which(purrr::map_chr(temp$grobs, "name") == "guide-box")
  legend <- temp$grobs[[legend]]

  legend

}
NULL




#' The SciencesPo [ggplot2] theme
#'
#' Adds vertical grid lines to plots for scatter plots
#'
#' @md
#' @export
scatter_grid <- function() {
  ggplot2::theme(panel.grid.major.x = ggplot2::element_line(colour = "#dedddd"))
}





#' The Urban Institute [ggplot2] theme
#'
#' Creates a grid object with the Urban Institute logo
#'
#' @import grid
#' @import gridExtra
#' @md
#' @export
scpo_logo_text <- function() {
  grid::grobTree(
    gp = gpar(fontsize = 7,
              hjust = 1,
              vjust = 1),
    textGrob(label = " S C I E N C E S P O",
             name = "caption1",
             x = unit(1, "npc"),
             y = unit(1, "npc"),
             hjust = 1,
             vjust = 1,
             gp = gpar(fontface = "bold",
                       fontfamily = "Arial Narrow")),
    grid::textGrob(label = "P A C K A G E",
                   x = unit(1, "npc") - grobWidth("caption1") - unit(0.001, "lines"),
                   y = unit(1, "npc"),
                   hjust = 1,
                   vjust = 1,
                   gp = gpar(col = "#1696d2", fontface = "bold", fontfamily = "Arial Narrow"))
  )
}
NULL






#' scpo_note
#'
#' @param note character string for a note
#' @param size font size for the note
#' @param width a number of characters to allow before a character return
#'
#' @return a grob formatted for a source in a ggplot
#' @export
#'
add_note <- function(note, size = 8, width = 132) {

  # get the shorter first line
  wrapped_lines <- stringr::str_wrap(note, width = width - 6)

  line1 <- paste0(stringr::str_split(wrapped_lines, "\n", n = 2)[[1]][1], "\n")

  multiline <- length(stringr::str_split(wrapped_lines, "\n", n = 2)[[1]]) > 1

  if (multiline) {

    lines <- stringr::str_replace_all(stringr::str_split(wrapped_lines, "\n", n = 2)[[1]][2], "\n", " ")

    lines <- stringr::str_wrap(lines, width = width)

  }

  grob1 <- textGrob("Note: ",
                    name = "note1",
                    x = unit(0, "npc"),
                    y = unit(1, "npc"),
                    hjust = 0,
                    vjust = 1,
                    gp = gpar(fontsize = size, fontfamily = "Arial Narrow", fontface = "bold", lineheight = 1))

  grob2 <- textGrob(line1,
                    x = unit(0, "npc") + grobWidth("note1"),
                    y = unit(1, "npc"),
                    hjust = 0,
                    vjust = 1,
                    gp = gpar(fontsize = size, fontfamily = "Lato", lineheight = 1))


  if (multiline) {

    grob3 <- textGrob(lines,
                      x = unit(0, "npc"),
                      y = unit(1, "npc") - 1.5 * grobHeight("note1"),
                      hjust = 0,
                      vjust = 1,
                      gp = gpar(fontsize = size, fontfamily = "Arial Narrow", lineheight = 1))


    grobTree(grob1, grob2, grob3)
  } else {
    grobTree(grob1, grob2)
  }
}





#' add_source
#'
#' @param string character string for a source statement
#' @param size font size for the source
#'
#' @return a grob formatted for a source in a ggplot
#' @export
#'
add_source <- function(string, size = 8) {
  grid::grobTree(
    grid::textGrob("Source: ",
                   name = "source1",
                   x = unit(0, "npc"),
                   y = unit(1, "npc"),
                   hjust = 0,
                   vjust = 1,
                   gp = gpar(fontsize = size, fontfamily = "Arial Narrow", fontface = "bold")),
    grid::textGrob(string,
                   x = unit(0, "npc") + grobWidth("source1"),
                   y = unit(1, "npc"),
                   hjust = 0,
                   vjust = 1,
                   gp = gpar(fontsize = size, fontfamily = "Arial Narrow"))
  )
}
NULL






#' add_subtitle
#'
#' @param string character string for a subtitle
#' @param size font size for the subtitle
#'
#' @return a grob formatted for a subtitle in a ggplot
#' @export
#'
add_subtitle <- function(string, size = 9.5) {
  grid::textGrob(string,
                 x = unit(0, "npc"),
                 y = unit(1, "npc"),
                 hjust = 0,
                 vjust = 1,
                 gp = gpar(fontsize = size,
                           fontfamily = "Arial Narrow"))
}






#' add_title
#'
#' @param string character string for a title
#' @param size font size for the title
#' @param width a number of characters to allow before a character return
#'
#' @return a grob formatted for a source in a ggplot
#' @export
#'
add_title <- function(string, size = 12, width = 68) {

  if (width == FALSE) {
    grid::textGrob(string,
                   x = unit(0, "npc"),
                   y = unit(1, "npc"),
                   hjust = 0,
                   vjust = 1,
                   gp = gpar(fontsize = size,
                             fontfamily = "Arial Narrow",
                             lineheight = 1,
                             fontface = "bold"))
  } else {
    grid::textGrob(stringr::str_wrap(string, width = width),
                   x = unit(0, "npc"),
                   y = unit(1, "npc"),
                   hjust = 0,
                   vjust = 1,
                   gp = gpar(fontsize = size,
                             fontfamily = "Arial Narrow",
                             lineheight = 1,
                             fontface = "bold"))
  }
}
NULL


#add_y_title
#'
#' @param string character string for a y-axis title
#' @param size font size for the y-axis title
#'
#' @return a grob formatted for a y-axis title in a ggplot
#' @export
#'
add_y_title <- function(string, size = 8.5) {
  grid::textGrob(string,
                 x = unit(0, "npc"),
                 y = unit(1, "npc"),
                 hjust = 0,
                 vjust = 1,
                 gp = gpar(fontsize = size,
                           fontfamily = "Arial Narrow",
                           fontface = "italic"))
}
NULL


#' scpo_plot
#'
#' @param ... scpo plot objects or grobs
#' @param heights relative heights of each object in the final plot
#'
#' @return one plot made from many grobs
#' @export
#'
scpo_plot <- function(..., heights = 1) {
  grid.arrange(...,
               heights = heights)
}
NULL






#' The SciencesPo [ggplot2] theme
#'
#' Removes tick marks from all axes
#'
#' @param axis Axis to drop. "x", "y", or "both"
#'
#' @md
#' @export
remove_ticks <- function(axis = "both") {

  if (axis == "x") {

    ggplot2::theme(axis.ticks.x = ggplot2::element_blank())

  } else if (axis == "y") {

    ggplot2::theme(axis.ticks.y = ggplot2::element_blank())

  } else if (axis == "both") {

    ggplot2::theme(axis.ticks = ggplot2::element_blank(),
                   axis.ticks.x = ggplot2::element_blank(),
                   axis.ticks.y = ggplot2::element_blank())

  } else {

    stop('Invalid "axis" argument. Valid arguments are: ',
         '"x", "y", and "both"',
         call. = FALSE)

  }
}
NULL




#' The SciencesPo [ggplot2] theme
#'
#' Removes legend
#'
#' @param ggplot_object a ggplot
#'
#' @return a ggplot without a legend
#' @export
#'
remove_legend <- function(ggplot_object) {

  ggplot_object +
    ggplot2::guides(color = FALSE,
                    fill = FALSE,
                    alpha = FALSE,
                    size = FALSE,
                    shape = FALSE,
                    linetype = FALSE)

}
NULL




#' The SciencesPo [ggplot2] theme
#'
#' Removes axes and axes labels
#'
#' @param axis Axis to drop. "x", "y", or "both"
#' @param flip TRUE/FALSE is `coord_flip()` is used
#'
#' @md
#' @export
remove_axis <- function(axis = "y", flip = FALSE) {

  if (axis == "x" && flip == FALSE) {

    ggplot2::theme(panel.grid.major.x = ggplot2::element_blank(),
                   axis.text.x = ggplot2::element_blank(),
                   axis.line.x = ggplot2::element_blank())

  } else if (axis == "x" && flip == TRUE) {

    ggplot2::theme(panel.grid.major.y = ggplot2::element_blank(),
                   axis.text.x = ggplot2::element_blank(),
                   axis.line.x = ggplot2::element_blank(),
                   axis.ticks = ggplot2::element_blank(),
                   axis.line.y = ggplot2::element_line(colour = NULL,
                                                       size = NULL,
                                                       linetype = NULL,
                                                       lineend = NULL))

  } else if (axis == "y" && flip == FALSE) {

    ggplot2::theme(panel.grid.major.y = ggplot2::element_blank(),
                   axis.text.y = ggplot2::element_blank(),
                   axis.line.y = ggplot2::element_blank(),
                   axis.ticks = ggplot2::element_blank())

  } else if (axis == "y" && flip == TRUE) {

    ggplot2::theme(panel.grid.major.y = ggplot2::element_blank(),
                   axis.text.y = ggplot2::element_blank(),
                   axis.line.y = ggplot2::element_blank(),
                   axis.ticks = ggplot2::element_blank(),
                   axis.title.y = ggplot2::element_blank())

  } else if (axis == "both") {

    ggplot2::theme(panel.grid.major.x = ggplot2::element_blank(),
                   axis.text.x = ggplot2::element_blank(),
                   axis.line.x = ggplot2::element_blank(),
                   panel.grid.major.y = ggplot2::element_blank(),
                   axis.text.y = ggplot2::element_blank(),
                   axis.line.y = ggplot2::element_blank(),
                   axis.ticks = ggplot2::element_blank())

  } else {

    stop('Invalid "axis" or "flip" argument. Valid arguments are: ',
         '"x", "y", and "both", or TRUE/FALSE',
         call. = FALSE)
  }
}
NULL
