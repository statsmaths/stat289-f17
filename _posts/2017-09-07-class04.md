---
title: "Class 04: More Layers and Interactive Graphics"
author: "Taylor Arnold"
output: html_notebook
---




{% highlight r %}
library(readr)
library(ggplot2)
library(dplyr)
library(viridis)
{% endhighlight %}

![](../assets/img/data_pipeline_visualize.png)

## Aesthetics: A brief review

We will once again work with the `mpg` dataset for
today's notes:


{% highlight r %}
mpg <- read_csv("https://statsmaths.github.io/stat_data/mpg.csv")
{% endhighlight %}

Most of you seemed fairly confident last time about
how to construct basic plots such as a scatter plot:


{% highlight r %}
ggplot(mpg, aes(displ, cty)) +
  geom_point()
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-3-1.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" width="100%" />

Most confusion, though I think nearly everyone figured
it out by the end of class, came from the difference between
assigning aesthetics to a fixed value versus a variable
in the dataset. These need a different syntax and doing
it incorrectly produces very unhelpful error messages or
(even worse) silently ignores your request.

In short, to assign a variable to an aesthetic value,
always put it inside of the `aes` function and include
it as the first set of inputs to the geometry. Fixed
values go after the variable values and must be outside
of the `aes` function. Here is a plot with a variable
color but a fixed size:


{% highlight r %}
ggplot(mpg, aes(displ, cty)) +
  geom_point(aes(color = class), size = 5)
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-4-1.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" width="100%" />

Here is a variable size and a fixed color:


{% highlight r %}
ggplot(mpg, aes(displ, cty)) +
  geom_point(aes(size = hwy), color = "salmon")
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="100%" />

And here is a plot with fixed size and fixed color:


{% highlight r %}
ggplot(mpg, aes(displ, cty)) +
  geom_point(size = 5, color = "salmon")
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-6-1.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" width="100%" />

Finally, recall that we are using inheritance from the
`ggplot` function to assign the same dataset, x and
(if needed) y aesthetics to each layer. We can modify
any of these if needed. For example, here I add both
the city and highway miles per gallon to the same plot:


{% highlight r %}
ggplot(mpg, aes(displ, cty)) +
  geom_point() +
  geom_point(aes(y = hwy), color = "red")
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-7-1.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" width="100%" />

Notice that in this example we still have to hold by the
rules for aesthetic mappings. In the second call to
`geom_point`, y is mapped to a variable (`hwy`) and
therefore goes first and inside of `aes`. The color
is a fixed value and therefore goes outside of `aes`
and follows it.

## More Graphics Layers

Last time we introduced a brief history of the theory of graphics
and developed the concepts and syntax behind building graphics in
R with the **ggplot2** package. Today we will continue this by
looking at the remaining layer types within the Grammar of Graphics.


### Scales

Recall that some layers, such as labels and themes, have
default values that are assumed if we do not specify
any alternatives. Another layer type with a default
value are **scales**, which are associated with every
variable-assigned aesthetic. For example, the
`scale_x_continuous` and `scale_y_continuous` functions
define the range of the two dimensions of the plot.
The defaults (just fitting all of the data) usually work well,
but we can modify them when needed:


{% highlight r %}
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  scale_x_continuous(limits = c(0, 7.5))
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-8-1.png" title="plot of chunk unnamed-chunk-8" alt="plot of chunk unnamed-chunk-8" width="100%" />

There are also alternative scales for the x and y coordinates,
such as `scale_x_log10` and `scale_x_sqrt`.

The color scales determine the exact colors being used. The
**viridis** package provides an alternative scale for the
colors that I prefer:


{% highlight r %}
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = cty)) +
  scale_color_viridis()
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-9-1.png" title="plot of chunk unnamed-chunk-9" alt="plot of chunk unnamed-chunk-9" width="100%" />

The viridis package is particularly useful when producing
plots for overhead projectors, plots that may need to printed,
or plots that are color-blind friendly.

### facets

Facets are a graphics layer that allow us to produce a number
of smaller visualizations based on the unique values of one or
more categorical variables. There are only two such layers:
`facet_wrap` and `facet_grid`. The following examples show
how they work. Facet wrapping takes a single variable:


{% highlight r %}
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_wrap(~class)
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-10-1.png" title="plot of chunk unnamed-chunk-10" alt="plot of chunk unnamed-chunk-10" width="100%" />

And the grid variant takes two variables:


{% highlight r %}
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_grid(drv~class)
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-11-1.png" title="plot of chunk unnamed-chunk-11" alt="plot of chunk unnamed-chunk-11" width="100%" />

I suggest taking a look at the help pages to see how the
`scales` option modifies these plots; it determines whether
each plot uses the same range of values or not. Often one
will be a good choice and the other a bad choice, but it
may not be clear which is which!

### Annotations

Eventually, you may want to manually add annotations to a
plot. That is, adding fixed points, text, or lines that are
not directly mapped from data elements. To add lines, there
are several "fake" geometry layers that help us do that:


{% highlight r %}
ggplot() +
  geom_vline(xintercept = 5) +
  geom_hline(yintercept = 30) +
  geom_abline(slope = 10, intercept = 0) +
  scale_x_continuous(limit = c(0, 5)) +
  scale_y_continuous(limit = c(0, 50))
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-12-1.png" title="plot of chunk unnamed-chunk-12" alt="plot of chunk unnamed-chunk-12" width="100%" />

Here I added them to a blank plot but you can add any of these
elements to a plot with other data points.

Text and points can be added by the `annotate` function:


{% highlight r %}
ggplot() +
  annotate("point", x = 0.9, y = 0.2) +
  annotate("text",  x = 0.1, y = 0.5, label = "HI!") +
  scale_x_continuous(limit = c(0, 1)) +
  scale_y_continuous(limit = c(0, 1))
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-13-1.png" title="plot of chunk unnamed-chunk-13" alt="plot of chunk unnamed-chunk-13" width="100%" />

Again, these can be added to a plot with data elements as
well. You can also specify the color, size, and other
relevant aesthetics just as you would would any other
layer.

### Coordinates and Statistics

The two final layers we have not yet seen in **ggplot2** are
coordinate systems and statistics.

The default coordinate layer is `coord_cartesian`; the only
other coordinate system I regularly use is `coord_flip`.
It exchanges the x and y axes. For most geoms this is silly
because we should just manually flip the x and y coordinates
ourselves in the aesthetic mapping. However, boxplots must
always have the categorical variable first and the numeric
variable second. The flipped coordinates allow use to make
horizontal boxplots:


{% highlight r %}
ggplot(mpg, aes(class, hwy)) +
  geom_boxplot() +
  coord_flip()
{% endhighlight %}

<img src="../assets/2017-09-07-class04/unnamed-chunk-14-1.png" title="plot of chunk unnamed-chunk-14" alt="plot of chunk unnamed-chunk-14" width="100%" />

Summary statistics are used internally by plots such as the
histogram and box plot (notice that their y axis is a variable
not in the original data set). Getting into their usage is a
bit beyond what I want to cover this week so that is all I
will say at the moment. I just did not want to leave of at
least a mention of the last and final layer in **ggplot2**.

### The Grammar of Graphics

We have covered all of the layer types in **ggplot2**. Putting
these building blocks together you can make nearly any
visualization you could imagine from one or more data sources.
For review, these are the specific layers (the first two are
special because they exist *attached* to other layers rather
than as their own separate elements; they can be attached to
the main `ggplot` function, though, and inherited throughout):

- data
- aesthetics
- geometries
- facets
- statistics
- scales
- coordinate systems
- labels
- annotations

We covered only a small set of the geometries available within
**ggplot2**. Feel free to take a look at the additional options
on the cheatsheet and work them into your analyses when you
feel they might help your work.

## Interactivity

### The plotly package

The **plotly** package allows us to turn ordinary **ggplot2**
graphics into interactive ones. Simply load the library, run
any standard ggplot graphic:


{% highlight r %}
library(plotly)
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = cty)) +
  scale_color_viridis()
{% endhighlight %}

And then call the `ggplotly` function:


{% highlight r %}
ggplotly()
{% endhighlight %}

If you are in RStudio, the interactive plot should show up in
the lower right hand corner. If calling R elsewhere, it should
open a browser window.

### tooltip

By default, **plotly** includes any variables used for the
plot in the tooltip (the box that comes up when you hover
over a point). Sometimes we might want a variable to show
up in the plot but not actually included in the plot itself.
To do this, we simply trick **ggplot2** by adding an
unknown aesthetic; here I use one called "fake":


{% highlight r %}
library(plotly)
ggplot(mpg, aes(displ, hwy)) +
  geom_point(aes(color = cty, fake = manufacturer)) +
  scale_color_viridis()
{% endhighlight %}

The interactive plot should now show the manufacturer on
the plot.

### Thoughts on interactivity

- interactive graphics are a fantastic tool in doing data analysis
- use caution with larger datasets; consider sub-sampling or only
    working with a smaller collection
- when possible, try to replicate the most useful interactive views
    with static graphics for reproducibility and publication purposes

