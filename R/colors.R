
#' A Wes Anderson palette generator
#'
#' These are a handful of color palettes from Wes Anderson movies. 
#' @param n Number of colors desired. Unfortunately most palettes now only have 4 or 5 colors. But hopefully we'll add more palettes soon. All color schemes are derived from the most excellent Tumblr blog: \href{http://wesandersonpalettes.tumblr.com/}{Wes Anderson Palettes}
#' @param  name Name of desired palette. Choices are: \code{GrandBudapest}, \code{Moonrise1},  \code{Royal1},  \code{Moonrise2}, \code{Cavalcanti},  \code{Royal2}, \code{GrandBudapest2},  \code{Moonrise3},  \code{Chevalier} 
#' @export
#' @keywords colors
#' @examples 
#' wes.palette(3, "Royal1")
#' wes.palette(3, "GrandBudapest")
#' wes.palette(5, "Cavalcanti")

wes.palette <- function(name) {
	
GrandBudapest <- colorRampPalette(c("#F1BB7B", "#FD6467", "#5B1A18", "#D67236"))
Moonrise1 <- colorRampPalette(c("#F3DF6C", "#CEAB07", "#D5D5D3", "#24281A"))
Royal1 <- colorRampPalette(c("#899DA4", "#C93312", "#FAEFD1", "#DC863B"))
Moonrise2 <- colorRampPalette(c("#798E87", "#C27D38", "#CCC591", "#29211F"))
Cavalcanti <- colorRampPalette(c("#D8B70A", "#02401B", "#A2A475", "#81A88D", "#972D15"))
Royal2 <- colorRampPalette(c("#9A8822", "#F5CDB4", "#F8AFA8", "#FDDDA0", "#74A089"))
GrandBudapest2 <- colorRampPalette(c("#E6A0C4", "#C6CDF7", "#D8A499", "#7294D4"))
Moonrise3 <- colorRampPalette(c("#85D4E3", "#F4B5BD", "#9C964A", "#CDC08C", "#FAD77B"))
Chevalier <- colorRampPalette(c("#446455", "#FDD262", "#D3DDDC", "#C7B19C"))
Zissou <- colorRampPalette(c("#3B9AB2", "#78B7C5", "#EBCC2A", "#E1AF00", "#F21A00"))
FantasticFox <- colorRampPalette(c("#DD8D29", "#E2D200", "#46ACC8", "#E58601", "#B40F20"))
Darjeeling <- colorRampPalette(c("#FF0000", "#00A08A", "#F2AD00", "#F98400", "#5BBCD6"))
Rushmore <- colorRampPalette(c("#E1BD6D", "#EABE94", "#0B775E", "#35274A" ,"#F2300F"))
if(!name %in% namelist$movies)
	stop("Palette not found.")

## if(n > namelist[which(namelist$movies == name), 2])
## 	stop("Number of requested colors greater than what palette can offer")

get(name)

}



#' Display a palette
#'
#' @param n Number of colors desired. Unfortunately most palettes now only have 4 or 5 colors. But hopefully we'll add more palettes soon. All color schemes are derived from the most excellent Tumblr blog: \href{http://wesandersonpalettes.tumblr.com/}{Wes Anderson Palettes}
#' @param  name Name of desired palette. Choices are: \code{GrandBudapest}, \code{Moonrise1},  \code{Royal1},  \code{Moonrise2}, \code{Cavalcanti},  \code{Royal2}, \code{GrandBudapest2},  \code{Moonrise3},  \code{Chevalier} 
#' @export
#' @examples \dontrun{
#'	display.wes.palette(3, "Royal1")
#'}
display.wes.palette <- function(n, name) {

if(!name %in% namelist$movies)
	stop("Palette not found.")

if(n > namelist[which(namelist$movies == name), 2])
	stop("Number of requested colors greater than what palette can offer")


   image(1:n,1,as.matrix(1:n),col= wes.palette(n,name),
       xlab=name, ylab = "",xaxt = "n",yaxt = "n", bty = "n")

}
