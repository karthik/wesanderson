[![Build Status](https://travis-ci.org/karthik/wesanderson.png)](https://travis-ci.org/karthik/wesanderson)

# Wes Anderson Palettes

![](rushmore.jpg)

> I saved you from boring plots. What did you ever do? - Max Fischer (probably)

Tired of generic mass produced palettes for your plots? Short of adding an owl and dressing up your plot in a bowler hat, here's the most indie thing you can do to one. Several palettes derived from the amazing Tumblr blog [Wes Anderson Palettes.](http://wesandersonpalettes.tumblr.com/)

```coffee
install.packages("wesanderson")
```

__Or the development version__

```coffee
devtools::install_github("karthik/wesanderson")
```


__Current list of available palettes__






```r
library(wesanderson)
namelist
```



```
#> 
#> Attaching package: 'pander'
#> 
#> The following object is masked from 'package:knitr':
#> 
#>     pandoc
```



|     movies     |  wesnums  |
|:--------------:|:---------:|
| GrandBudapest  |     4     |
|   Moonrise1    |     4     |
|     Royal1     |     4     |
|   Moonrise2    |     4     |
|   Cavalcanti   |     5     |
|     Royal2     |     5     |
| GrandBudapest2 |     4     |
|   Moonrise3    |     5     |
|   Chevalier    |     4     |
|     Zissou     |     5     |
|  FantasticFox  |     5     |
|   Darjeeling   |     5     |
|    Rushmore    |     5     |
|  BottleRocket  |     7     |


__Some examples__


```r
qplot(factor(cyl), data=mtcars, geom="bar", fill=factor(vs)) + scale_fill_manual(values = wes.palette(2, "Royal1"))
```

![](figure/ggplot1.png) 



```r
ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) + 
geom_point(size = 3) + 
scale_color_manual(values = wes.palette(3, "GrandBudapest")) + 
theme_gray()
```

![](figure/ggplot2.png) 



## The Life Aquatic


```r
pal <- wes.palette(name = "Zissou", type = "continuous")
image(volcano, col = pal(21))
```

![](figure/volcano.png) 



```r
library(wesanderson)
pal <- wes.palette(name = "Zissou", type = "continuous")
# heatmap is a local dataset
ggplot(heatmap, aes(x = X2, y = X1, fill = value)) +
 geom_tile() + 
 scale_fill_gradientn(colours = pal(100)) + 
scale_x_discrete(expand = c(0, 0)) +
scale_y_discrete(expand = c(0, 0)) + coord_equal() 
```

![](figure/zissou_heatmap.png) 



__See the palettes__


```r
display.wes.palette(4, "GrandBudapest")
```

![](figure/palette11.png) 

```r
display.wes.palette(4, "Moonrise1")
```

![](figure/palette12.png) 

```r
display.wes.palette(4, "Royal1")
```

![](figure/palette13.png) 

```r
display.wes.palette(4, "Moonrise2")
```

![](figure/palette14.png) 

```r
display.wes.palette(5, "Cavalcanti")
```

![](figure/palette15.png) 

```r
display.wes.palette(5, "Royal2")
```

![](figure/palette16.png) 

```r
display.wes.palette(4, "GrandBudapest2")
```

![](figure/palette17.png) 

```r
display.wes.palette(5, "Moonrise3")
```

![](figure/palette18.png) 

```r
display.wes.palette(4, "Chevalier")
```

![](figure/palette19.png) 

```r
display.wes.palette(5, "Zissou")
```

![](figure/palette110.png) 

```r
display.wes.palette(4, "FantasticFox")
```

![](figure/palette111.png) 

```r
display.wes.palette(5, "Darjeeling")
```

![](figure/palette112.png) 

```r
display.wes.palette(4, "Rushmore")
```

![](figure/palette113.png) 

```r
display.wes.palette(6, "BottleRocket")
```

![](figure/palette114.png) 


## Gallery of examples

* [Reading Secure Data Into R from Dropbox](http://aaronbaggett.com/notes/2014/03/28/reading-secure-data-into-r-from-dropbox/)

![](http://i.imgur.com/rKqbzQB.png)


