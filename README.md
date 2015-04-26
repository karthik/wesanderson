<!-- README.md is generated from README.Rmd. Please edit that file -->
Wes Anderson Palettes
=====================

[![Build Status](https://travis-ci.org/karthik/wesanderson.png)](https://travis-ci.org/karthik/wesanderson)  
[![Build Status](http://cranlogs.r-pkg.org/badges/wesanderson)](http://cran.rstudio.com/web/packages/wesanderson/index.html)  

![](rushmore.jpg)

> I saved you from boring plots. What did you ever do? - Max Fischer (probably)

Tired of generic mass produced palettes for your plots? Short of adding an owl and dressing up your plot in a bowler hat, here's the most indie thing you can do to one. First round of palettes derived from the amazing Tumblr blog [Wes Anderson Palettes.](http://wesandersonpalettes.tumblr.com/)

Installation
------------

``` r
install.packages("wesanderson")
```

**Or the development version**

``` r
devtools::install_github("karthik/wesanderson")
```

Usage
-----

``` r
library(wesanderson)

# See all palettes
names(wes_palette)
#> NULL
```

### Grand Budapest

``` r
library(ggplot2)
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
  geom_point(size = 3) + 
  scale_color_manual(values = wes_palette("GrandBudapest")) + 
  theme_gray()
```

![](figure/grandbudapest-1.png)

Moonrise Kingdom
----------------

``` r
wes_palette("Moonrise1")
```

![](figure/moonrise-1.png)

``` r
wes_palette("Moonrise2")
```

![](figure/moonrise-2.png)

``` r
wes_palette("Moonrise3")
```

![](figure/moonrise-3.png)

Royal Tannenbaums
-----------------

``` r
wes_palette("Royal1")
```

![](figure/royal-1.png)

``` r
wes_palette("Royal2")
```

![](figure/royal-2.png)

``` r
qplot(factor(cyl), data=mtcars, geom="bar", fill=factor(vs)) + 
  scale_fill_manual(values = wes_palette("Royal1"))
```

![](figure/ggplot1-1.png)

Castello Cavalcanti
-------------------

``` r
wes_palette("Cavalcanti")
```

![](figure/castello-1.png)

Hotel Chevalier
---------------

``` r
wes_palette("Chevalier")
```

![](figure/chevalier-1.png)

The Life Aquatic
----------------

``` r
wes_palette("Zissou")
```

![](figure/lifeaquatic-1.png)

``` r
pal <- wes_palette("Zissou", 21, type = "continuous")
image(volcano, col = pal)
```

![](figure/volcano-1.png)

``` r
pal <- wes_palette("Zissou", 100, type = "continuous")
# heatmap is a local dataset
ggplot(heatmap, aes(x = X2, y = X1, fill = value)) +
  geom_tile() + 
  scale_fill_gradientn(colours = pal) + 
  scale_x_discrete(expand = c(0, 0)) +
  scale_y_discrete(expand = c(0, 0)) + 
  coord_equal() 
```

![](figure/zissou_heatmap-1.png)

Darjeeling Limited
------------------

![](http://i.imgur.com/Z2nJvOG.jpg)

``` r
wes_palette("Darjeeling")
```

![](figure/darjeeling-1.png)

``` r
wes_palette("Darjeeling2")
```

![](figure/darjeeling-2.png)

Fantastic Mr. Fox
-----------------

``` r
wes_palette("FantasticFox")
```

![](figure/fantasticfox-1.png)

Rushmore
--------

``` r
wes_palette("Rushmore")
```

![](figure/rushmore-1.png)

Bottle Rocket
-------------

Coming soon

------------------------------------------------------------------------

Gallery of examples
-------------------

-   [Reading Secure Data Into R from Dropbox](http://aaronbaggett.com/notes/2014/03/28/reading-secure-data-into-r-from-dropbox/)

![](http://i.imgur.com/rKqbzQB.png)
