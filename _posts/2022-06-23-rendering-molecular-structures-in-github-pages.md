---
title: Rendering Molecular Structures in GitHub Pages
author: Michael Chary
layout: post
date: 2022-06-23
tag: [classics] 
excerpt: Classical Reading List
modified: 2022-06-23
parse_block_html: true
chem_vis: true
---

For some of my research projects (**TODO: List them**) it is helpful to display the chemical structures. Displaying them can bring to light structural similarities or differences that are not obvious from the molecular formula. 

But, there is an informatics issue. 
The easiest way to display chemical diagrams is to use LaTeX. GitHub pages doesn't directly support LaTeX. It does support MathJax. With a combination of MathJax and Kekule one can write formula. 

#### BLUF 
Here is a picture of 2,4-dinitrophenol. 

{% tikz %}
  bort 
{% endtikz %}


#### Alternative Approaches

**MathJax**

$$ 
	C_2
$$