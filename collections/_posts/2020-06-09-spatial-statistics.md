---
title: Spatial Statistics
author: Michael Chary
layout: post
date: 2020-06-08
modified: 2022-07-31
tag: [statistics, spatial statistics] 
excerpt: Spatial Statistics

---

Spatial statistics is concerned with, as you might expect, how statistics vary over space. 

A difference between spatial statistics and the more comon types (t-test, Z-score) is that *everything* , is that the measurement between spatial areas is often correlated. For example, the health effects of living in Colorado or New York City might reflect the geography or the demographics of the people who live there, or those who migrated into or out of an area. You can't compare 20 year-olds in one place to 40-year olds in another place and attribute the difference to spatial variation. The spatial null hypothesis is that the distribution of events across a region is uniformly random (process randomness) and that the position of each event is independent of every other event (spatial randomness).

The software and analytic approaches for dealing with spatial data only minimally overlap with the software and analytic approaches for the other type of statistics. (I struggle with what to call the other statistics, because spatial statistics is, argulably, older than "classical" statistics.)

### Spatiotemporal Variation

Things often vary in space and time simultaneously. One physics inspired approach is, essentially. $$f\left(\vec{x},t\right) = g\left(\vec{x}\right)h\left(t\right) $$. This decomposition assumes that the variations in space, $$g\left(\vec{x}\right)$$, and time, $$h\left(t\right)$$ are independent enough. Assuming independence leads to elegant linear algebra, but is not valid for variation on the theme of of: "What happens to individuals moving through space if they pick up and lose members?" Even if the decomposition is unrealistic, it is a useful starting point to define the modeling approach. The temporal and spatial dynamics may be on disparate enough scales to be considered separately. 


 [Gao et al.](https://geods.geography.wisc.edu/song/papers/2016GIScience_paper_150_STAutoCorrelation.pdf) extended the Getis-Ord G* (Eq \ref{eq:getis-ord} )
$$
G = \frac{w_{ij}x_ix_j}{x_ix_j}\label{eq:getis-ord}
$$

### Location Quotient

The location quotient, $lq$ measures the relative concentration of something in one region compared to all others. Let $x$ be a continuous one-dimensional variable where the index indicates its location in a one-dimensional geographic region. We can then define the location quotient as follows: 

$$
    {lq}_i = \frac{x_i}{||x||}
$$

If the processes generating the activity are random and without spatial dependence, then we expect $lq$ to equal $\frac{1}{n}$ for a geography divided into $n$ partitions. 

When analyzing the distribution of human artifacts, it usually makes sense to scale $lq$ by the population density in that region. 

For social media we make a further refinement because we are interested in the density of relevant conversations. And we only count the number of relevant posts. It is interesting to compare the differences between scaling this number by social media activity (e.g. total posts in a region) vs by population density. 

{% comment %}
Get TikZ rendering working. 
{% endcomment %}

### To Read
* [Good write-up on location quotient](https://www.economicmodeling.com/2011/10/14/understanding-location-quotient-2/)
* [Intro to Spatial Analysis with Geopandas](https://www.youtube.com/watch?v=h5sy0z2BUTo), Don't forget [PySAL](http://pysal.org/notebooks/explore/segregation/intro.html)
* [MIT OCW Geocoding 101](https://ocw.mit.edu/resources/res-str-001-geographic-information-system-gis-tutorial-january-iap-2016/spatial-statistics/MITRES_STR_001IAP16_spati.pdf)
* [Wikipedia: Indicators of Spatial Association](https://en.wikipedia.org/wiki/Indicators_of_spatial_association)