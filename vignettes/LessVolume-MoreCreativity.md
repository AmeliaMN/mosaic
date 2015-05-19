<style type="text/css">
span.boxed {
  border:5px solid gray;
  border-radius:10px;
  padding: 5px;
}
span.invboxed {
  border:5px solid gray;
  padding: 5px;
  border-radius:10px;
  color: white;
}
table, td, th
{
border:0px;
}
</style>
Project MOSAIC and the `mosaic` package
---------------------------------------

NSF-funded project to develop a new way to introduce mathematics, statistics, computation and modeling to students in colleges and universities.

-   more information at [mosaic-web.org](http://mosaic-web.org)

-   the `mosaic` package is available via
    -   [CRAN](http://cran.r-project.org/web/packages/mosaic/index.html)
    -   [github](https://github.com/ProjectMOSAIC/mosaic)
        -   updates more frequently than CRAN
        -   use `devtools::install_github(ProjectMOSAIC/mosaic)` to install directly from github
        -   add the optional `ref="beta"` to install from the beta (developmental) branch
        -   add `build_vignettes=TRUE` if your system is equipped to build vignettes.

### A note about this document

This document was originally created as an R presentation to be used as slides accompanying various presentations. It has been converted into a more traditional document for use as a vignette in the `mosaic` package.

The examples below use the `mosaic` and `mosaicData` packages.

``` r
require(mosaic)
require(mosaicData)
```

Less Volume, More Creativity
----------------------------

Many of the guiding principles of the `mosaic` package reflect the "Less Volume, More Creativity" mantra of Mike McCarthy who had a large poster with those words placed in the "war room" (where assistant coaches decide on the game plan for the upcoming opponent) as a constant reminder not to add too much complexity to the game plan.

<table>
<tr align="top">
<td width="20%" align="top">
<img src="images/MikeMcCarthy.jpg" align="top" width="200">
</td>
<td align="top">
A lot of times you end up putting in a lot more volume, because you are teaching fundamentals and you are teaching concepts that you need to put in, but you may not necessarily use because they are building blocks for other concepts and variations that will come off of that ... In the offseason you have a chance to take a step back and tailor it more specifically towards your team and towards your players." <br><br> Mike McCarthy, Head Coach, Green Bay Packers
</td>
</tr>
</table>
### SIBKIS: See It Big, Keep It Simple

Here is another elegant phrasing of a similar principle.
<table>
<tr>
<td>
Perfection is achieved, not when there is nothing more to add, but when there is nothing left to take away. <br><br> --- Antoine de Saint-Exupery (writer, poet, pioneering aviator)
</td>
<td width="20%">
<img src="images/SaintExupery.jpg">
</tr>
</table>
Less Volume, More Creativity in R
---------------------------------

One key to successfully introducing R is finding a set of commands that is

-   **small**: fewer is better
-   **coherent**: commands should be as similar as possible
-   **powerful**: can do what needs doing

It is not enough to use R, it must be used elegantly.

Two examples of this principle: \* the **mosaic** package \* the **dplyr** package (Hadley Wickham)

### Minimal R

**Goal:** a minimal set of R commands for Intro Stats

**Result:** Minimal R Vignette (`vignette("MinimalR")`)

Much of the work on the `mosaic` package has been motivated by

-   The Less Volume, More Creativity approach
-   The Minimal R goal

### A few little details

If you (or your students) are just getting started with R, it is good to keep the following in mind:

#### R is case sensitive

-   many students are *not* case sensitive

#### Arrows and Tab

-   up/down arrows scroll through history
-   TAB completion can simplify typing

#### If all else fails, try ESC

-   If you see a + prompt, it means R is waiting for more input
-   If this is unintentional, you probably have a typo
-   ESC will get you pack to the command prompt

The Most Important Template
---------------------------

 

The following template is important because we can do so much with it.

 

<center>
<h2>
<strong><span class="invboxed">goal</span> ( <span class="invboxed">yyy</span> ~ <span class="invboxed">xxx</span> , data = <span class="invboxed">mydata</span> )</strong>
</h2>
</center>
 

It is useful to name the components of the template:

 

<center>
<h2>
<strong><span class="boxed">goal</span> ( <span class="boxed"> y </span> ~ <span class="boxed"> x </span> , data = <span class="boxed">mydata</span> )</strong>
</h2>
</center>
  We're hiding a bit of complexity in the template, and there will be times that we will want to gussy things up a bit. We'll indicate that by adding `...` to the end of the template. Just don't let `...` become a distractor early on.

 

<center>
<h2>
<strong><span class="boxed">goal</span> ( <span class="boxed"> y </span> ~ <span class="boxed"> x </span> , data = <span class="boxed">mydata</span> , ...)</strong>
</h2>
</center>
 

### Other versions

Here are some variations on the template.

``` r
# simpler version
goal( ~ x, data = mydata )          
# fancier version
goal( y ~ x | z , data = mydata )   
# unified version
goal( formula , data = mydata )     
```

2 Questions
-----------

Using the template generally requires answering two questions. (These questions are useful in the context of nearly all computer tools, just substitute "the computer" in for R in the questions.)

 
<center>
<h2>
<strong><span class="boxed">goal</span> ( <span class="boxed"> y </span> ~ <span class="boxed"> x </span> , data = <span class="boxed">mydata</span> )</strong>
</h2>
</center>
 

### What do you want R to do? (goal)

-   This determines the R function to use

### What must R know to do that?

-   This determines the inputs to the function
-   Must identify the variables and data frame

How do we make this plot? (Questions)
-------------------------------------

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-4-1.png" title="" alt="" width="60%" height="35%" style="display: block; margin: auto;" />

### What is the Goal?

-   

### What does R need to know?

-   -   

### How do we make this plot? (Answers)

#### What is the Goal?

-   a scatter plot (`xyplot()`)

#### What does R need to know?

-   which variable goes where (`births ~ date`)
-   which data set (`data=Births78`)
    -   use `?Births78` for documentation

#### Putting it all together

``` r
xyplot( births ~ date, data=Births78) 
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-5-1.png" title="" alt="" width="60%" style="display: block; margin: auto;" />

### Your turn: How do you make this plot?

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-6-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

Some things you will need to know:

1.  Command: <code>bwplot()</code>

2.  The data: <code>HELPrct</code>

-   Variables: <code>age</code>, <code>substance</code>
-   use `?HELPrct` for info about data

#### Answer

``` r
bwplot( age ~ substance, data=HELPrct)
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-7-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

### Your turn: How about this one?

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-8-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

Some things you will need to know:

1.  Command: <code>bwplot()</code>

2.  The data: <code>HELPrct</code>

-   Variables: <code>age</code>, <code>substance</code>
-   use `?HELPrct` for info about data

#### Answer

``` r
bwplot( substance ~ age, data=HELPrct )
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-9-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

Note that we have reversed which variable is mapped to the x-axis and which to the y-axis by reversing their order in the formula.

### Graphical Summaries: One Variable

``` r
histogram( ~ age, data=HELPrct) 
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-10-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

Note: When there is **one variable** it is on the **right side** of the formula.

### Graphical Summaries: Overview

#### One Variable

``` r
  histogram( ~age, data=HELPrct ) 
densityplot( ~age, data=HELPrct ) 
     bwplot( ~age, data=HELPrct ) 
     qqmath( ~age, data=HELPrct ) 
freqpolygon( ~age, data=HELPrct ) 
   bargraph( ~sex, data=HELPrct )
```

#### Two Variables

``` r
xyplot(  i1 ~ age,       data=HELPrct ) 
bwplot( age ~ substance, data=HELPrct ) 
bwplot( substance ~ age, data=HELPrct ) 
```

**Note:** `i1` is the average number of drinks (standard units) consumed per day in the past 30 days (measured at baseline)

### The Graphics Template

#### One variable

<center>
<h3>
<strong><span class="boxed">plotname</span> ( ~ <span class="boxed"> x </span> , data = <span class="boxed">mydata</span> , ...)</strong>
</h3>
</center>
-   `histogram()`, `qqmath()`, `densityplot()`, `freqpolygon()`, `bargraph()`

 

#### Two Variables

<center>
<h3>
<strong><span class="boxed">plotname</span> ( <span class="boxed"> y </span> ~ <span class="boxed"> x </span> , data = <span class="boxed">mydata</span> , ...)</strong>
</h3>
</center>
-   `xyplot()`, `bwplot()`

### Your turn

Create a plot of your own choosing with one of these data sets

``` r
names(KidsFeet)    # 4th graders' feet
?KidsFeet
```

``` r
names(Utilities)   # utility bill data
?Utilities
```

``` r
require(NHANES)    # load package
names(NHANES)      # body shape, etc. 
?NHANES
```

### groups and panels

-   Add `groups =`<span class="invboxed">group</span> to overlay.

-   Use `y ~ x | z` to create multipanel plots.

Here is an example.

``` r
densityplot( ~ age | sex, data=HELPrct,  
               groups=substance,  
               auto.key=TRUE)   
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-16-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

Beginners can create plots with 3 or 4 variables easily and quickly using this template.

Bells & Whistles
================

The `lattice` graphics system includes lots of bells and whistles including

-   titles
-   axis labels
-   colors
-   sizes
-   transparency
-   etc, etc.

I used to introduce these too early. My current approach:

-   Let the students ask or
-   Let the data analysis drive

#### An example with some bells and whistles

``` r
require(lubridate)
xyplot( births ~ date, data=Births78,  
  groups=wday(date, label=TRUE, abbr=TRUE), 
  type='l',
  auto.key=list(columns=4, lines=TRUE, points=FALSE),
  par.settings=list(
    superpose.line=list( lty=1 ) ))
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-17-1.png" title="" alt="" width="85%" style="display: block; margin: auto;" />

**Notes:** \* `wday()` is in the `lubridate` package \* This version of the plot reveals a clear weekend (and holiday) pattern. Typically, I like to have students conjecture about the "double wave" pattern and see if we can build plots to test their conjectures.

Numerical Summaries
-------------------

The `mosaic` package provides functions that make it simple to create numerical summaries using the same template used for graphing (and later for describing linear models).

### Numerical Summaries: One Variable

Big idea:

-   Replace plot name with summary name
-   Nothing else changes

``` r
histogram( ~ age, data=HELPrct )  # width=5 (or 10) might be good here
     mean( ~ age, data=HELPrct )
```

    ## [1] 35.65342

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-19-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

#### Other summaries

The mosaic package includes formula aware versions of `mean()`, `sd()`, `var()`, `min()`, `max()`, `sum()`, `IQR()`, ...

Also provides `favstats()` to compute our favorites.

``` r
favstats( ~ age, data=HELPrct )
```

    ##  min Q1 median Q3 max     mean       sd   n missing
    ##   19 30     35 40  60 35.65342 7.710266 453       0

`favstats()` quickly becomes a go-to function in our courses.

### Tallying

``` r
tally( ~ sex, data=HELPrct)
```

    ## 
    ## female   male 
    ##    107    346

``` r
tally( ~ substance, data=HELPrct)
```

    ## 
    ## alcohol cocaine  heroin 
    ##     177     152     124

### Numerical Summaries: Two Variables

There are three ways to think about this. All do the same thing.

``` r
sd(   age ~ substance, data=HELPrct )
sd( ~ age | substance, data=HELPrct )
sd( ~ age, groups=substance, data=HELPrct )
```

    ##  alcohol  cocaine   heroin 
    ## 7.652272 6.692881 7.986068

This makes it possible to easily convert three different types of plots into the (same) corresponding numerical summary.

### Numerical Summaries: Tables

2-way tables are just tallies of 2 variables.

``` r
tally( sex ~ substance, data=HELPrct )
```

    ##         substance
    ## sex      alcohol cocaine heroin
    ##   female      36      41     30
    ##   male       141     111     94

``` r
tally( ~ sex + substance, data=HELPrct )
```

    ##         substance
    ## sex      alcohol cocaine heroin
    ##   female      36      41     30
    ##   male       141     111     94

Other output formats are available

``` r
tally( sex ~ substance,   data=HELPrct, format="proportion" )
```

    ##         substance
    ## sex        alcohol   cocaine    heroin
    ##   female 0.2033898 0.2697368 0.2419355
    ##   male   0.7966102 0.7302632 0.7580645

``` r
tally( substance ~ sex,   data=HELPrct, format="proportion", margins=TRUE )
```

    ##          sex
    ## substance    female      male
    ##   alcohol 0.3364486 0.4075145
    ##   cocaine 0.3831776 0.3208092
    ##   heroin  0.2803738 0.2716763
    ##   Total   1.0000000 1.0000000

``` r
tally( ~ sex + substance, data=HELPrct, format="proportion", margins=TRUE )
```

    ##         substance
    ## sex         alcohol    cocaine     heroin      Total
    ##   female 0.07947020 0.09050773 0.06622517 0.23620309
    ##   male   0.31125828 0.24503311 0.20750552 0.76379691
    ##   Total  0.39072848 0.33554084 0.27373068 1.00000000

``` r
tally( sex ~ substance,   data=HELPrct, format="percent" )
```

    ##         substance
    ## sex       alcohol  cocaine   heroin
    ##   female 20.33898 26.97368 24.19355
    ##   male   79.66102 73.02632 75.80645

#### More examples

``` r
mean( age ~ substance | sex, data=HELPrct )
```

    ##      A.F      C.F      H.F      A.M      C.M      H.M        F        M 
    ## 39.16667 34.85366 34.66667 37.95035 34.36036 33.05319 36.25234 35.46821

``` r
mean( age ~ substance | sex, data=HELPrct, .format="table" )
```

    ##   substance sex     mean
    ## 1         A   F 39.16667
    ## 2         A   M 37.95035
    ## 3         C   F 34.85366
    ## 4         C   M 34.36036
    ## 5         H   F 34.66667
    ## 6         H   M 33.05319

-   I've abbreviated some labels to make things fit better. You can do this using `mutate()` (in the `dplyr` package) or `transform()`.
-   This also works for `median()`, `min()`, `max()`, `sd()`, `var()`, `favstats()`, etc.

### One Template to Rule a Lot

This master template can be used to do a large portion of what needs doing in an Intro Stats course.

-   single and multiple variable graphical summaries
-   single and multiple variable numerical summaries
-   linear models

``` r
  mean( age ~ sex, data=HELPrct )
bwplot( age ~ sex, data=HELPrct ) 
    lm( age ~ sex, data=HELPrct )
```

    ##   female     male 
    ## 36.25234 35.46821

    ## (Intercept)     sexmale 
    ##  36.2523364  -0.7841284

It can be learned early and practiced often so that students become secure in their ability to use these functions.

Some other things
-----------------

The `mosaic` package includes some other things, too \* data sets (they have now been moved to separate `mosaicData` and `NHANES` packages) \* xtras: `xchisq.test()`, `xpnorm()`, `xqqmath()` \* these functions add a bit of extra output to the similarly named functions that don't have a leading `x` \* `mplot()` \* `mplot(HELPrct)` interactive plot creation \* replacements for `plot()` in some situations \* simplified `histogram()` controls (e.g., `width`) \* simplified ways to add onto lattice plots (`add = TRUE` works in many situations)

### Examples

``` r
xpnorm( 700, mean=500, sd=100)
```

    ## 
    ## If X ~ N(500,100), then 
    ## 
    ##  P(X <= 700) = P(Z <= 2) = 0.9772
    ##  P(X >  700) = P(Z >  2) = 0.0228

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-31-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

    ## [1] 0.9772499

``` r
xpnorm( c(300, 700), mean=500, sd=100)
```

    ## 
    ## If X ~ N(500,100), then 
    ## 
    ##  P(X <= 300) = P(Z <= -2) = 0.0228
    ##      P(X <= 700) = P(Z <= 2) = 0.9772
    ##  P(X >  300) = P(Z >  -2) = 0.9772
    ##      P(X >  700) = P(Z >  2) = 0.0228

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-32-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

    ## [1] 0.02275013 0.97724987

``` r
xchisq.test(phs)
```

    ## 
    ##  Pearson's Chi-squared test with Yates' continuity correction
    ## 
    ## data:  x
    ## X-squared = 24.429, df = 1, p-value = 7.71e-07
    ## 
    ##    104.00   10933.00 
    ## (  146.52) (10890.48)
    ## [12.05]  [ 0.16] 
    ## <-3.51>  < 0.41> 
    ##    
    ##    189.00   10845.00 
    ## (  146.48) (10887.52)
    ## [12.05]  [ 0.16] 
    ## < 3.51>  <-0.41> 
    ##    
    ## key:
    ##  observed
    ##  (expected)
    ##  [contribution to X-squared]
    ##  <residual>

Modeling
--------

Modeling is really the starting point for the `mosaic` design.

-   linear models (`lm()` and `glm()`) defined the template
-   `lattice` graphics use the template (so we chose `lattice`)
-   we added functionality so numerical summaries can be done with the same template
-   additional things added to make modeling easier for beginners

### Models as Functions

``` r
model <- lm(width ~ length * sex, 
            data=KidsFeet)
Width <- makeFun(model)
Width( length=25, sex="B")
```

    ##        1 
    ## 9.167675

``` r
Width( length=25, sex="G")
```

    ##        1 
    ## 8.939312

Once models have been converted into functions, we can easily add them to out plots using `plotFun()`.

``` r
xyplot( width ~ length, data=KidsFeet, 
        groups=sex, auto.key=TRUE )
plotFun( Width(length, sex="B") ~ length, 
         col=1, add=TRUE)
```

    ## converting numerical color value into a color using lattice settings

``` r
plotFun( Width(length, sex="G") ~ length, 
         col=2, add=TRUE)
```

    ## converting numerical color value into a color using lattice settings
    ## converting numerical color value into a color using lattice settings

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-37-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

Resampling -- You can do() it!
------------------------------

If you want to teach using randomization tests and bootstrap intervals, the `mosaic` package provides some functions to simplify creating the random distirubtions involved.

### An example: The Lady Tasting Tea

-   Often used on first day of class

-   Story

-   woman claims she can tell whether milk has been poured into tea or vice versa.

-   Question: How do we test this claim?

We use `rflip()` to simulate flipping coins

``` r
rflip()
```

    ## 
    ## Flipping 1 coin [ Prob(Heads) = 0.5 ] ...
    ## 
    ## H
    ## 
    ## Number of Heads: 1 [Proportion Heads: 1]

**Note:** We do this with students who do not (yet) know what a binomial distribution is, so we want to avoid using `rbinom()` at this point.

Rather than flip each coin separately, we can flip multiple coins at once.

``` r
rflip(10)
```

    ## 
    ## Flipping 10 coins [ Prob(Heads) = 0.5 ] ...
    ## 
    ## H H H T T T H H H T
    ## 
    ## Number of Heads: 6 [Proportion Heads: 0.6]

-   easier to consider `heads` = correct; `tails` = incorrect than to compare with a given pattern
-   this switch bothers me more than it bothers my students

### Now let's do that a lot of times

`rflip(10)` simulates 1 lady tasting 10 cups 1 time.

We can do that many times to see how guessing ladies do:

``` r
do(2) * rflip(10)
```

    ##    n heads tails prop
    ## 1 10     6     4  0.6
    ## 2 10     5     5  0.5

-   `do()` is clever about what it remembers (in many common situations)
-   2 isn't many -- we'll do many next -- but it is a good idea to take a look at a small example before generating a lot of random data.

Now let's simulate 5000 guessing ladies

``` r
Ladies <- do(5000) * rflip(10)
head(Ladies, 1)
```

    ##    n heads tails prop
    ## 1 10     4     6  0.4

``` r
histogram( ~ heads, data=Ladies, width=1 )
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/ladies5000-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

**Q.** How often does guessing score 9 or 10?

Here are 3 ways to find out

``` r
tally( ~(heads >= 9), data=Ladies)
```

    ## 
    ##  TRUE FALSE 
    ##    52  4948

``` r
tally( ~(heads >= 9), data=Ladies, format="prop")
```

    ## 
    ##   TRUE  FALSE 
    ## 0.0104 0.9896

``` r
 prop( ~(heads >= 9), data=Ladies)
```

    ##     target level: TRUE;  other levels: FALSE

    ##   TRUE 
    ## 0.0104

### A general approach to randomization

The Lady Tasting Tea illustrates a 3-step process that can be reused in many situations:

1.  Do it for your data
2.  Do it for "random" data
3.  Do it lots of times for "random" data

-   definition of "random" is important, but can often be handled by the `mosaic` functions `shuffle()` or `resample()`

### Example: Do mean ages differ by sex?

``` r
diffmean(age ~ sex, data=HELPrct)
```

    ##   diffmean 
    ## -0.7841284

``` r
do(1) * 
  diffmean(age ~ shuffle(sex), data=HELPrct)
```

    ##    diffmean
    ## 1 0.1090973

``` r
Null <- do(5000) * 
  diffmean(age ~ shuffle(sex), data=HELPrct)
```

``` r
prop( ~(abs(diffmean) > 0.7841), data=Null )
```

    ##     target level: TRUE;  other levels: FALSE

    ##   TRUE 
    ## 0.3616

``` r
histogram(~ diffmean, data=Null, v=-.7841) 
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-45-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

### Example: Bootstrap CI for difference in means

``` r
Bootstrap <- do(5000) * 
  diffmean(age~sex, data= resample(HELPrct))

histogram( ~diffmean, data=Bootstrap, 
                      v=-.7841, glwd=4 )
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-46-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

``` r
cdata(~diffmean, data=Bootstrap, p=.95)
```

    ##        low         hi  central.p 
    ## -2.4787104  0.8894968  0.9500000

``` r
confint(Bootstrap, method="quantile")
```

    ##       name    lower     upper level   method
    ## 1 diffmean -2.47871 0.8894968  0.95 quantile

``` r
confint(Bootstrap)  # default uses bootstrap st. err.
```

    ##       name    lower   upper level method   estimate margin.of.error
    ## 1 diffmean -2.42888 0.88929  0.95 stderr -0.7697948        1.659085

### Randomization and linear models

``` r
do(1) * lm(width ~ length, data=KidsFeet)
```

    ##   Intercept    length     sigma r.squared        F
    ## 1  2.862276 0.2479478 0.3963356 0.4110041 25.81878

``` r
do(3) * lm( width ~ shuffle(length), data=KidsFeet)
```

    ##   Intercept      length     sigma   r.squared         F
    ## 1 11.639314 -0.10706623 0.4962420 0.076635651 3.0708562
    ## 2 11.541875 -0.10312500 0.4977279 0.071097404 2.8319481
    ## 3  9.754237 -0.03081856 0.5147824 0.006349662 0.2364388

``` r
do(1) * 
  lm(width ~ length + sex, data=KidsFeet)
```

    ##   Intercept   length       sexG     sigma r.squared        F
    ## 1  3.641168 0.221025 -0.2325175 0.3848905 0.4595428 15.30513

``` r
do(3) * 
  lm( width ~ length + shuffle(sex), data=KidsFeet)
```

    ##   Intercept    length        sexG     sigma r.squared        F
    ## 1  2.942851 0.2431545  0.07785347 0.3998086 0.4168355 12.86608
    ## 2  3.450856 0.2282462 -0.20833605 0.3878261 0.4512672 14.80285
    ## 3  2.842685 0.2484316  0.01565872 0.4017205 0.4112447 12.57297

``` r
Null <- do(5000) * 
  lm( width ~ length + shuffle(sex), 
                       data=KidsFeet)
histogram( ~ sexG, data=Null, 
           v=-0.2325, glwd=4)
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-50-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

``` r
histogram(~sexG, data=Null, 
           v=-0.2325, glwd=4)
```

<img src="LessVolume-MoreCreativity_files/figure-markdown_github/unnamed-chunk-51-1.png" title="" alt="" width="70%" style="display: block; margin: auto;" />

``` r
prop(~ (sexG <= -0.2325), data=Null)
```

    ##     target level: TRUE;  other levels: FALSE

    ##  TRUE 
    ## 0.037