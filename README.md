
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fractalplotr

This package lets you create and plot fractals.

currently implemented:

-   [Dragon curve](https://en.wikipedia.org/wiki/Dragon_curve)
-   [Mandelbrot set](https://en.wikipedia.org/wiki/Mandelbrot_set)
-   [Sandpile](https://en.wikipedia.org/wiki/Abelian_sandpile_model)
-   [L-systems](https://en.wikipedia.org/wiki/L-system)

## Installation

You can install the most recent version from GitHub:

``` r
# install.packages("remotes")
remotes::install_github("bastihz/fractalplotr")
```

RStudio’s integrated package updater won’t detect updates in packages
installed from GitHub. I recommend running

``` r
remotes::update_packages()
```

in regular intervals to check for updates from those sources.

## Examples

### L-system plant

``` r
plant <- l_system(
    axiom = "X",
    rules = list(
        X = "F+[[X]-X]-F[-FX]+X",
        F = "FF"
    ),
    n = 7,
    angle = pi * 0.15,
    initial_angle = pi * 0.45
)
par(mar = rep(0, 4))
plot(plant, col = colorRampPalette(c("#008000", "#00FF00"))(100))
```

![](readme_figures/README-l_plant-1.png)<!-- -->

### Dragon curve

``` r
d <- dragon_curve(12)
par(mar = rep(0, 4))
plot(d, col = "purple")
```

![](readme_figures/README-dragon-1.png)<!-- -->

### Mandelbrot set

``` r
blue_to_black <- colorRampPalette(c(rgb(0, 0, 0.5), "white", rgb(1, 0.75, 0), 
                                    "darkred", "black"))
m <- mandelbrot(
    1200, 
    1200,
    re_width = 2.5,
    center = -0.75,
    color_palette = blue_to_black(128),
    color_mode = "smooth"
)
plot(m)
```

![](readme_figures/README-mandelbrot-1.png)<!-- -->

### Sandpile

``` r
s <- sandpile(1e5, c("white", "yellow", "orange", "red"))
plot(s)
```

![](readme_figures/README-sandpile-1.png)<!-- -->
