#http://flinklabs.com/labs/colors/
#' A muted, qualitative color palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(scpo_palette()(9))
scpo_palette <- function() { manual_pal(values = c("#d18975", "#8fd175", "#3f2d54", "#75b8d1", "#2d543d", "#c9d175", "#d1ab75", "#d175b8", "#758bd1")) }

#' Discrete color & fill scales based on the ipsum palette
#'
#' See [scpo_palette]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_scpo
#' @export
scale_colour_scpo <- function(...) { discrete_scale("colour", "scpo", scpo_palette(), ...) }

#' @export
#' @rdname scale_scpo
scale_color_scpo <- scale_colour_scpo

#' @export
#' @rdname scale_scpo
scale_fill_scpo <- function(...) { discrete_scale("fill", "scpo", scpo_palette(), ...) }




#' Tableau Classic 10 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(tableau10()(10))
tableau10 <- function() {manual_pal(values = c("#1f77b4", "#ff7f0e","#2ca02c","#d62728", "#9467bd", "#8c564b", "#8c564b", "#8c564b", "#e377c2", "#7f7f7f", "#bcbd22", "#17becf")) }

#' Discrete color & fill scales based on the ipsum palette
#'
#' See [tableau10]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_tableau10
#' @export
scale_colour_tableau10 <- function(...) { discrete_scale("colour", "tableau10", tableau10(), ...) }

#' @export
#' @rdname scale_tableau10
scale_color_tableau10 <- scale_colour_tableau10

#' @export
#' @rdname scale_tableau10
scale_fill_tableau10 <- function(...) { discrete_scale("fill", "tableau10", tableau10(), ...) }




#' Tableau Classic light 10 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(tableau10_light()(10))
tableau10_light <- function() { manual_pal(values =  c("#AEC7E8", "#FFBB78", "#98DF8A", "#FF9896", "#C5B0D5", "#C49C94", "#F7B6D2", "#C7C7C7", "#DBDB8D", "#9EDAE5")) }

#' Discrete color & fill scales based on the ipsum palette
#'
#' See [tableau10_light]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_tableau10_light
#' @export
scale_colour_tableau10_light <- function(...) { discrete_scale("colour", "tableau10_light", tableau10_light(), ...) }

#' @export
#' @rdname scale_tableau10_light
scale_color_tableau10_light <- scale_colour_tableau10_light

#' @export
#' @rdname scale_tableau10_light
scale_fill_tableau10_light <- function(...) { discrete_scale("fill", "tableau10_light", tableau10_light(), ...) }



#' Tableau Classic medium 10 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(tableau10_medium()(10))
tableau10_medium <- function() { manual_pal(values = c("#729ECE", "#FF9E4A", "#67BF5C", "#ED665D", "#AD8BC9", "#A8786E", "#ED97CA", "#A2A2A2", "#CDCC5D", "#6DCCDA")) }

#' Discrete color & fill scales based on the ipsum palette
#'
#' See [tableau10_medium]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_tableau10_medium
#' @export
scale_colour_tableau10_medium <- function(...) { discrete_scale("colour", "tableau10_medium", tableau10_medium(), ...) }

#' @export
#' @rdname scale_tableau10_medium
scale_color_tableau10_medium <- scale_colour_tableau10_medium

#' @export
#' @rdname scale_tableau10_medium
scale_fill_tableau10_medium <- function(...) { discrete_scale("fill", "tableau10_medium", tableau10_medium(), ...) }



#' Tableau Classic 20 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(tableau20()(20))
tableau20 <- function() { manual_pal(values = c("#1F77B4", "#AEC7E8", "#FF7F0E", "#FFBB78","#2CA02C","#98DF8A","#D62728", "#FF9896", "#9467BD","#C5B0D5", "#8C564B", "#C49C94", "#E377C2", "#F7B6D2", "#7F7F7F", "#C7C7C7", "#BCBD22",  "#DBDB8D",  "#17BECF", "#9EDAE5"))}





#' Discrete color & fill scales based on the ipsum palette
#'
#' See [tableau20]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_tableau20
#' @export
scale_colour_tableau20 <- function(...) { discrete_scale("colour", "tableau20", tableau20(), ...) }

#' @export
#' @rdname scale_tableau20
scale_color_tableau20 <- scale_colour_tableau20

#' @export
#' @rdname scale_tableau20
scale_fill_tableau20 <- function(...) { discrete_scale("fill", "tableau20", tableau20(), ...) }





#'  Classic 20 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(classic()(20))

classic <- function() {manual_pal(values = c("#1f77b4", "#aec7e8", "#ff7f0e", "#ffbb78", "#2ca02c", "#98df8a", "#d62728", "#ff9896", "#9467bd", "#c5b0d5", "#8c564b", "#c49c94", "#e377c2", "#f7b6d2", "#7f7f7f", "#c7c7c7", "#bcbd22", "#dbdb8d", "#17becf", "#9edae5"))}

#' Discrete color & fill scales based on the ipsum palette
#'
#' See [classic]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_classic
#' @export
scale_colour_classic <- function(...) { discrete_scale("colour", "classic", classic(), ...) }

#' @export
#' @rdname scale_classic
scale_color_classic <- scale_colour_classic

#' @export
#' @rdname scale_classic
scale_fill_classic <- function(...) { discrete_scale("fill", "classic", classic(), ...) }







#'  Theme web 20 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(web20()(20))

web20 <- function() {manual_pal(values = c("#1f77b4", "#aec7e8", "#ff7f0e", "#ffbb78", "#2ca02c", "#98df8a", "#d62728", "#ff9896", "#9467bd", "#c5b0d5", "#8c564b", "#c49c94", "#e377c2", "#f7b6d2", "#7f7f7f", "#c7c7c7", "#bcbd22", "#dbdb8d", "#17becf", "#9edae5"))}

#' Discrete color & fill scales based on the web palette
#'
#' See [web20]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_web20
#' @export
scale_colour_web20 <- function(...) { discrete_scale("colour", "web20", web20(), ...) }

#' @export
#' @rdname scale_web20
scale_color_web20 <- scale_colour_web20


#' @export
#' @rdname scale_web20
scale_fill_web20 <- function(...) { discrete_scale("fill", "web20", web20(), ...) }





#' Theme web 20 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(web20b()(20))

web20b <- function() {manual_pal(values = c("#393b79", "#5254a3", "#6b6ecf", "#9c9ede", "#637939", "#8ca252", "#b5cf6b", "#cedb9c", "#8c6d31", "#bd9e39", "#e7ba52", "#e7cb94", "#843c39", "#ad494a", "#d6616b", "#e7969c", "#7b4173", "#a55194", "#ce6dbd", "#de9ed6"))}

#' Discrete color & fill scales based on the web palette
#'
#' See [web20b]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_web20b
#' @export
scale_colour_web20b <- function(...) { discrete_scale("colour", "web20b", web20b(), ...) }

#' @export
#' @rdname scale_web20b
scale_color_web20b <- scale_colour_web20b

#' @export
#' @rdname scale_web20b
scale_fill_web20b <- function(...) { discrete_scale("fill", "web20b", web20b(), ...) }





#' Theme web 20 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(web20c()(20))

web20c <- function() {manual_pal(values = c("#3182bd", "#6baed6", "#9ecae1", "#c6dbef", "#e6550d", "#fd8d3c", "#fdae6b", "#fdd0a2", "#31a354", "#74c476", "#a1d99b", "#c7e9c0", "#756bb1", "#9e9ac8", "#bcbddc", "#dadaeb", "#636363", "#969696", "#bdbdbd", "#d9d9d9"))}

#' Discrete color & fill scales based on the web palette
#'
#' See [web20c]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_web20c
#' @export
scale_colour_web20c <- function(...) { discrete_scale("colour", "web20c", web20c(), ...) }

#' @export
#' @rdname scale_web20c
scale_color_web20c <- scale_colour_web20c

#' @export
#' @rdname scale_web20c
  scale_fill_web20c <- function(...) { discrete_scale("fill", "web20c", web20c(), ...) }





#'  Theme web 10 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(web10()(10))

web10 <- function() {manual_pal(values = c("#1f77b4", "#ff7f0e", "#2ca02c", "#d62728", "#9467bd", "#8c564b", "#e377c2", "#7f7f7f", "#bcbd22", "#17becf"))}

#' Discrete color & fill scales based on the web palette
#'
#' See [web10]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_web10
#' @export
scale_colour_web10 <- function(...) { discrete_scale("colour", "web10", web10(), ...) }

#' @export
#' @rdname scale_web10
scale_color_web10 <- scale_colour_web10

#' @export
#' @rdname scale_web10
scale_fill_web10 <- function(...) { discrete_scale("fill", "web10", web10(), ...) }




#'  Theme labs 16 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(labs16()(16))

labs16 <- function() {manual_pal(values = c("#1f77b4","#ff7f0e","#2ca02c","#d62728","#9467bd","#8c564b","#e377c2","#7f7f7f","#bcbd22","#17becf","#c5b0d5","#c49c94","#f7b6d2","#c7c7c7","#dbdb8d","#9edae5"))}



#' Discrete color & fill scales based on the labs palette
#'
#' See [labs16]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_labs16
#' @export
scale_colour_labs16 <- function(...) { discrete_scale("colour", "labs16", labs16(), ...) }

#' @export
#' @rdname scale_labs16
scale_color_labs16 <- scale_colour_labs16

#' @export
#' @rdname scale_labs16
scale_fill_labs16 <- function(...) { discrete_scale("fill", "labs16", labs16(), ...) }




#'  Theme labs 22 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(labs22()(22))

labs22 <- function() {manual_pal(values = c("#0e4897","#17813f","#1d99b4","#1f9ee8","#25ca7a","#471c7c","#68c7ed","#6d4e98","#73af38","#7f1273","#9e1653","#ab0077","#b01426","#b1b2b4","#c1d430","#cc0b24","#e10064","#e12653","#e34e9d","#e46b07","#fbee29","#fcc125"))}



#' Discrete color & fill scales based on the labs palette
#'
#' See [labs22]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_labs22
#' @export
scale_colour_labs22 <- function(...) { discrete_scale("colour", "labs22", labs22(), ...) }

#' @export
#' @rdname scale_labs22
scale_color_labs22 <- scale_colour_labs22

#' @export
#' @rdname scale_labs22
scale_fill_labs22 <- function(...) { discrete_scale("fill", "labs22", labs22(), ...) }





#'  Theme labs redfocus colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(redfocus()(16))

redfocus <- function() {manual_pal(values = c("#CB181D","#252525","#525252","#737373","#969696","#BDBDBD","#D9D9D9","#F0F0F0"))}



#' Discrete color & fill scales based on the redfocus palette
#'
#' See [redfocus]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_redfocus
#' @export
scale_colour_redfocus <- function(...) { discrete_scale("colour", "redfocus", redfocus(), ...) }

#' @export
#' @rdname scale_redfocus
scale_color_redfocus<- scale_colour_redfocus

#' @export
#' @rdname scale_redfocus
scale_fill_redfocus <- function(...) { discrete_scale("fill", "redfocus", redfocus(), ...) }








#'  Theme labs greenfocus colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(greenfocus()(16))

greenfocus <- function() {manual_pal(values = c("#41AB5D","#252525","#525252","#737373","#969696","#BDBDBD","#D9D9D9","#F0F0F0"))}



#' Discrete color & fill scales based on the greenfocus palette
#'
#' See [greenfocus]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_greenocus
#' @export
scale_colour_greenfocus <- function(...) { discrete_scale("colour", "greenfocus", greenfocus(), ...) }

#' @export
#' @rdname scale_greenfocus
scale_color_greenfocus <- scale_colour_greenfocus

#' @export
#' @rdname scale_greenfocus
scale_fill_greenfocus <- function(...) { discrete_scale("fill", "greenfocus", greenfocus(), ...) }






#'  Theme labs bluefocus colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(bluefocus()(10))

bluefocus <- function() {manual_pal(values = c("#0033FF","#252525","#525252","#737373","#969696","#BDBDBD","#D9D9D9","#F0F0F0"))}



#' Discrete color & fill scales based on the bluefocus palette
#'
#' See [bluefocus]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_bluefocus
#' @export
scale_colour_bluefocus <- function(...) { discrete_scale("colour", "bluefocus", bluefocus(), ...) }

#' @export
#' @rdname scale_bluefocus
scale_color_bluefocus <-scale_colour_bluefocus

#' @export
#' @rdname scale_bluefocus
scale_fill_bluefocus <- function(...) { discrete_scale("fill", "bluefocus", bluefocus(), ...) }







#'  Theme labs rainbow 12 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(rainbow12()(12))

rainbow12 <- function() {manual_pal(values = c("#BF4D4D","#BF864D","#BFBF4D","#86BF4D","#4DBF4D","#4DBF86","#4DBFBF","#4D86BF","#4D4DBF","#864DBF","#BF4DBF","#BF4D86"))}



#' Discrete color & fill scales based on the rainbow 12 palette
#'
#' See [rainbow12]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_rainbow12
#' @export
scale_colour_rainbow12 <- function(...) { discrete_scale("colour", "rainbow12", rainbow12(), ...) }

#' @export
#' @rdname scale_rainbow12
scale_color_rainbow12 <- scale_colour_rainbow12

#' @export
#' @rdname scale_rainbow12
scale_fill_rainbow12 <- function(...) { discrete_scale("fill", "rainbow12", rainbow12(), ...) }






#'  Theme labs rainbow 10 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(rainbow10()(10))

rainbow10 <- function() {manual_pal(values = c("#BF4D4D","#BF914D","#A8BF4D","#63BF4D","#4DBF7A","#4DBFBF","#4D7ABF","#634DBF","#A84DBF","#BF4D91"))}



#' Discrete color & fill scales based on the rainbow 10 palette
#'
#' See [rainbow10]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_rainbow10
#' @export
scale_colour_rainbow10 <- function(...) { discrete_scale("colour", "rainbow10", rainbow10(), ...) }

#' @export
#' @rdname scale_rainbow10
scale_color_rainbow10 <- scale_colour_rainbow10

#' @export
#' @rdname scale_rainbow10
scale_fill_rainbow10 <- function(...) { discrete_scale("fill", "rainbow10", rainbow10(), ...) }






#'  Theme labs rainbow 8 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(rainbow8()(8))

rainbow8 <- function() {manual_pal(values = c("#BF4D4D","#BFA34D","#86BF4D","#4DBF69","#4DBFBF","#4D69BF","#864DBF","#BF4DA3"))}



#' Discrete color & fill scales based on the rainbow 8 palette
#'
#' See [rainbow8]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_rainbow8
#' @export
scale_colour_rainbow8 <- function(...) { discrete_scale("colour", "rainbow8", rainbow8(), ...) }

#' @export
#' @rdname scale_rainbow8
scale_color_rainbow8 <- scale_colour_rainbow8

#' @export
#' @rdname scale_rainbow8
scale_fill_rainbow8 <- function(...) { discrete_scale("fill", "rainbow8", rainbow8(), ...) }






#'  Theme labs rainbow 6 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(rainbow6()(8))

rainbow6 <- function() {manual_pal(values = c("#BF4D4D","#BFBF4D","#4DBF4D","#4DBFBF","#4D4DBF","#BF4DBF"))}



#' Discrete color & fill scales based on the rainbow 6 palette
#'
#' See [rainbow6]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_rainbow6
#' @export
scale_colour_rainbow6 <- function(...) { discrete_scale("colour", "rainbow6", rainbow6(), ...) }

#' @export
#' @rdname scale_rainbow6
scale_color_rainbow6 <- scale_colour_rainbow6

#' @export
#' @rdname scale_rainbow6
scale_fill_rainbow6 <- function(...) { discrete_scale("fill", "rainbow6", rainbow6(), ...) }








#'  Theme labs rich 12 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(rich12()(12))

rich12 <- function() {manual_pal(values = c("#000040","#000093","#0020E9","#0076FF","#00B8C2","#04E466","#49FB25","#E7FD09","#FEEA02","#FFC200","#FF8500","#FF3300"))}



#' Discrete color & fill scales based on the rainbow 12 palette
#'
#' See [rich12]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_rich12
#' @export
scale_colour_rich12 <- function(...) { discrete_scale("colour", "rich12", rich12(), ...) }

#' @export
#' @rdname scale_rich12
scale_color_rich12 <- scale_colour_rich12

#' @export
#' @rdname scale_rich12
scale_fill_rich12 <- function(...) { discrete_scale("fill", "rich12", rich12(), ...) }






#'  Theme labs rich 10 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(rich10()(10))

rich10 <- function() {manual_pal(values = c("#000041","#0000A9","#0049FF","#00A4DE","#03E070","#5DFC21","#F6F905","#FFD701","#FF9500","#FF3300"))}



#' Discrete color & fill scales based on the rich 10 palette
#'
#' See [rich10]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_rich10
#' @export
scale_colour_rich10 <- function(...) { discrete_scale("colour", "rich10", rich10(), ...) }

#' @export
#' @rdname scale_rich10
scale_color_rainbow10 <- scale_colour_rainbow10

#' @export
#' @rdname scale_rich10
scale_fill_rich10 <- function(...) { discrete_scale("fill", "rich10", rich10(), ...) }






#'  Theme labs rich 8 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(rich8()(8))

rich8 <- function() {manual_pal(values = c("#000041","#0000CB","#0081FF","#02DA81","#80FE1A","#FDEE02","#FFAB00","#FF3300"))}



#' Discrete color & fill scales based on the rich 8 palette
#'
#' See [rich8]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_rich8
#' @export
scale_colour_rich8 <- function(...) { discrete_scale("colour", "rich8", rich8(), ...) }

#' @export
#' @rdname scale_rich8
scale_color_rich8 <- scale_colour_rich8

#' @export
#' @rdname scale_rich8
scale_fill_rich8 <- function(...) { discrete_scale("fill", "rich8", rich8(), ...) }






#'  Theme labs rich 6 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(rich6()(8))

rich6 <- function() {manual_pal(values = c("#000043","#0033FF","#01CCA4","#BAFF12","#FFCC00","#FF3300"))}



#' Discrete color & fill scales based on the rich 6 palette
#'
#' See [rich6]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_rich6
#' @export
scale_colour_rich6 <- function(...) { discrete_scale("colour", "rich6", rich6(), ...) }

#' @export
#' @rdname scale_rich6
scale_color_rich6 <- scale_colour_rich6

#' @export
#' @rdname scale_rich6
scale_fill_rich6 <- function(...) { discrete_scale("fill", "rich6", rich6(), ...) }







#'  Theme labs redmono 8 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(redmono()(8))

redmono <- function() {manual_pal(values = c("#99000D","#CB181D","#EF3B2C","#FB6A4A","#FC9272","#FCBBA1","#FEE0D2","#FFF5F0"))}






#' Discrete color & fill scales based on the redmono 8 palette
#'
#' See [redmono]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_redmono
#' @export
scale_colour_redmono <- function(...) { discrete_scale("colour", "redmono", redmono(), ...) }

#' @export
#' @rdname scale_redmono
scale_color_redmono <- scale_colour_redmono

#' @export
#' @rdname scale_redmono
scale_fill_redmono <- function(...) { discrete_scale("fill", "redmono", redmono(), ...) }







#'  Theme labs greenmono 8 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(greenmono()(8))

greenmono <- function() {manual_pal(values = c("#005A32","#238B45","#41AB5D","#74C476","#A1D99B","#C7E9C0","#E5F5E0","#F7FCF5"))}




#' Discrete color & fill scales based on the greenmono 8 palette
#'
#' See [greenmono]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_greenmono
#' @export
scale_colour_greenmono <- function(...) { discrete_scale("colour", "greenmono", greenmono(), ...) }

#' @export
#' @rdname scale_greenmono
scale_color_greenmono <- scale_colour_greenmono

#' @export
#' @rdname scale_greenmono
scale_fill_greenmono <- function(...) { discrete_scale("fill", "greenmono", greenmono(), ...) }





#'  Theme labs bluemono 8 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(bluemono()(8))

bluemono<- function() {manual_pal(values = c("#084594","#2171B5","#4292C6","#6BAED6","#9ECAE1","#C6DBEF","#DEEBF7","#F7FBFF"))}



#' Discrete color & fill scales based on the bluemono 8 palette
#'
#' See [bluemono]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_bluemono
#' @export
scale_colour_bluemono <- function(...) { discrete_scale("colour", "bluemono", bluemono(), ...) }

#' @export
#' @rdname scale_bluemono
scale_color_bluemono <- scale_colour_bluemono

#' @export
#' @rdname scale_bluemono
scale_fill_bluemono <- function(...) { discrete_scale("fill", "bluemono", bluemono(), ...) }






#'  Theme labs greymono 8 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(greymono()(8))

greymono <- function() {manual_pal(values = c("#000000","#252525","#525252","#737373","#969696","#BDBDBD","#D9D9D9","#F0F0F0"))}



#' Discrete color & fill scales based on the greymono 8 palette
#'
#' See [greymono]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_greymono
#' @export
scale_colour_greymono <- function(...) { discrete_scale("colour", "greymono", greymono(), ...) }

#' @export
#' @rdname scale_greymono
scale_color_greymono <- scale_colour_greymono

#' @export
#' @rdname scale_greymono
scale_fill_greymono <- function(...) { discrete_scale("fill", "greymono", greymono(), ...) }
NULL







#'  Theme labs R4 8 colors palette
#'
#' @export
#' @importFrom scales manual_pal
#' @examples
#' library(scales)
#' scales::show_col(R4()(9))

R4 <- function() {manual_pal(values = c("#000000","#DF536B", "#61D04F", "#2297E6", "#28E2E5", "#CD0BBC", "#F5C710", "#9E9E9E"))}



#' Discrete color & fill scales based on the R4 8 palette
#'
#' See [R4]().
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_R4
#' @export
scale_colour_R4 <- function(...) { discrete_scale("colour", "R4", R4(), ...) }

#' @export
#' @rdname scale_R4
scale_color_R4 <- scale_colour_R4

#' @export
#' @rdname scale_R4
scale_fill_R4 <- function(...) { discrete_scale("fill", "R4", R4(), ...) }
