---
title: Spatial Statistics
author: Michael Chary
layout: post
date: 2020-06-08
modified: 2020-06-10
tag: [statistics, spatial statistics] 
excerpt: Spatial Statistics

---

Spatial statistics is concerned with, as you might expect, how statistics vary over space. 

At an abstract level, a striking difference between spatial statistics and the more comon types (t-tests, Z-scores) is that *everything* , in general, is correlated in space.  For example, the health effects of living in Colorado or New York City might reflect the geography or the demographics of the people who live there, or **maddeningly** the people who migrated out of an area. You can't compare 20 year-olds in one place to 40-year olds in another place and attribute the difference to spatial variation.  

The software and analytic approaches for dealing with spatial data only minimally overlap with the software and analytic approaches for the other type of statistics. (I struggle with what to call the other statistics, because spatial statistics is, argulably, older than "classical" statistics.)



### Spatiotemporal Variation

Things often vary in space and time simultaneously. One physics inspired approach is, essentially. $$f\left(\vec{x},t\right) = g\left(\vec{x}\right)h\left(t\right) $$. This decomposition assumes that the variations in space, $$g\left(\vec{x}\right)$$, and time, $$h\left(t\right)$$ are independent enough. Assuming independence leads to elegant linear algebra, but is not valid for variation on the theme of of: "What happens to individuals moving through space if they pick up and lose members?" Even if the decomposition is unrealistic, it is a useful starting point to define the modeling approach. The temporal and spatial dynamics may be on disparate enough scales to be considered separately. 


 [Gao et al.](https://geods.geography.wisc.edu/song/papers/2016GIScience_paper_150_STAutoCorrelation.pdf) extended the Getis-Ord G* (Eq \ref{eq:getis-ord} )
$$
G = \frac{w_{ij}x_ix_j}{x_ix_j}\label{eq:getis-ord}
$$





### To Read
* [Good write-up on location quotient](https://www.economicmodeling.com/2011/10/14/understanding-location-quotient-2/)
* [Intro to Spatial Analysis with Geopandas](https://www.youtube.com/watch?v=h5sy0z2BUTo), Don't forget [PySAL](http://pysal.org/notebooks/explore/segregation/intro.html)
* [MIT OCW Geocoding 101](https://ocw.mit.edu/resources/res-str-001-geographic-information-system-gis-tutorial-january-iap-2016/spatial-statistics/MITRES_STR_001IAP16_spati.pdf)
* [Wikipedia: Indicators of Spatial Association](https://en.wikipedia.org/wiki/Indicators_of_spatial_association)