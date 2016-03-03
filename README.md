---
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# Wes Anderson Palettes

[![Build Status](https://travis-ci.org/karthik/wesanderson.png)](https://travis-ci.org/karthik/wesanderson)  
![CRAN Downloads](http://cranlogs.r-pkg.org/badges/wesanderson)

![](rushmore.jpg)

> I saved you from boring plots. What did you ever do? - Max Fischer (probably)

Tired of generic mass produced palettes for your plots? Short of adding an owl and dressing up your plot in a bowler hat, here's the most indie thing you can do to one. First round of palettes derived from the amazing Tumblr blog [Wes Anderson Palettes.](http://wesandersonpalettes.tumblr.com/)

## Installation

```R
install.packages("wesanderson")
```

__Or the development version__

```R
devtools::install_github("karthik/wesanderson")
```

## Usage


```r
library(wesanderson)

# See all palettes
names(wes_palettes)
#>  [1] "GrandBudapest"  "Moonrise1"      "Royal1"         "Moonrise2"     
#>  [5] "Cavalcanti"     "Royal2"         "GrandBudapest2" "Moonrise3"     
#>  [9] "Chevalier"      "Zissou"         "FantasticFox"   "Darjeeling"    
#> [13] "Rushmore"       "BottleRocket"   "Darjeeling2"
```

### Grand Budapest


```r
library(ggplot2)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(size = 3) + 
  scale_color_manual(values = wes_palette("GrandBudapest")) + 
  theme_gray()
```

![plot of chunk grandbudapest](figure/grandbudapest-1.png)

## Moonrise Kingdom


```r
wes_palette("Moonrise1")
```

![plot of chunk moonrise](figure/moonrise-1.png)

```r
wes_palette("Moonrise2")
```

![plot of chunk moonrise](figure/moonrise-2.png)

```r
wes_palette("Moonrise3")
```

![plot of chunk moonrise](figure/moonrise-3.png)

## Royal Tenenbaums


```r
wes_palette("Royal1")
```

![plot of chunk royal](figure/royal-1.png)

```r
wes_palette("Royal2")
```

![plot of chunk royal](figure/royal-2.png)


```r
qplot(factor(cyl), data=mtcars, geom="bar", fill=factor(vs)) + 
  scale_fill_manual(values = wes_palette("Royal1"))
```

![plot of chunk ggplot1](figure/ggplot1-1.png)

## Castello Cavalcanti


```r
wes_palette("Cavalcanti")
```

![plot of chunk castello](figure/castello-1.png)

## Hotel Chevalier


```r
wes_palette("Chevalier")
```

![plot of chunk chevalier](figure/chevalier-1.png)

## The Life Aquatic


```r
wes_palette("Zissou")
```

![plot of chunk lifeaquatic](figure/lifeaquatic-1.png)


```r
pal <- wes_palette("Zissou", 21, type = "continuous")
image(volcano, col = pal)
```

![plot of chunk volcano](figure/volcano-1.png)


```r
pal <- wes_palette("Zissou", 100, type = "continuous")
# heatmap is a local dataset
ggplot(heatmap, aes(x = X2, y = X1, fill = value)) +
  geom_tile() + 
  scale_fill_gradientn(colours = pal) + 
  scale_x_discrete(expand = c(0, 0)) +
  scale_y_discrete(expand = c(0, 0)) + 
  coord_equal() 
```

![plot of chunk zissou_heatmap](figure/zissou_heatmap-1.png)

## Darjeeling Limited

![](http://i.imgur.com/Z2nJvOG.jpg)


```r
wes_palette("Darjeeling")
```

![plot of chunk darjeeling](figure/darjeeling-1.png)

```r
wes_palette("Darjeeling2")
```

![plot of chunk darjeeling](figure/darjeeling-2.png)

## Fantastic Mr. Fox


```r
wes_palette("FantasticFox")
```

![plot of chunk fantasticfox](figure/fantasticfox-1.png)

## Rushmore


```r
wes_palette("Rushmore")
```

![plot of chunk rushmore](figure/rushmore-1.png)

## Bottle Rocket


```r
wes_palette("BottleRocket2")
#> Error in wes_palette("BottleRocket2"): Palette not found.
```

---

## Gallery of examples

* [Reading Secure Data Into R from Dropbox](http://aaronbaggett.com/notes/2014/03/28/reading-secure-data-into-r-from-dropbox/)

![](http://i.imgur.com/rKqbzQB.png)

* [osmplotr](https://github.com/mpadge/osmplotr)

![][londonmap](https://raw.githubusercontent.com/mpadge/osmplotr/master/figure/map6.png)

