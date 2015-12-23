---
title       : Governance of NRT Conservancies
subtitle    : Governance Scores 2012 to 2014
author      : Deepali Gohil
job         : 
framework   : io2012      # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
biglogo     : NRT.jpg
widgets     : [mathjax, quiz, bootstrap, shiny, interactive] # {mathjax, quiz, bootstrap, shiny, interactive}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
ext_widgets : {rCharts:  libraries/nvd3}
---  &tocol_rev
## Overview of NRT Governance Scores
***=left
NRT Governance Scores are:

- Modular
 - 15 Parameters
 - Sub-parameters
 
- Qualitative
 - Score: Subjective
 - Range: 0-2
 
- Annual
- Report Cards
- Adaptive Management

*** =right
![width](nrt_main_map.jpg)


--- &twocol
## Governance Scores: 2012-2014
*** =left


![plot of chunk gov_score_graph1](assets/fig/gov_score_graph1-1.png) 

***=right



<table border=1>
<tr> <th>  </th> <th> Year </th> <th> Average Score </th>  </tr>
  <tr> <td align="right"> 1 </td> <td align="right"> 2012.00 </td> <td align="right"> 0.54 </td> </tr>
  <tr> <td align="right"> 2 </td> <td align="right"> 2013.00 </td> <td align="right"> 0.60 </td> </tr>
  <tr> <td align="right"> 3 </td> <td align="right"> 2014.00 </td> <td align="right"> 0.46 </td> </tr>
   </table>

--- 
## Interactive Governance Chart
<script>
$('#myslide').on('slideenter', function(){
  $(this).find('article')
    .append('<iframe src="https://dgohil.shinyapps.io/app2"></iframe>')
});
$('#myslide').on('slideleave', function(){
  $(this).find('iframe').remove();
});
</script>
---     




<div class="row-fluid">
  <div class="col-sm-4">
    <form class="well">
      <div class="form-group shiny-input-container">
        <label class="control-label" for="year">Choose Year</label>
        <div>
          <select id="year"><option value="2012" selected>2012</option>
<option value="2013">2013</option>
<option value="2014">2014</option></select>
          <script type="application/json" data-for="year" data-nonempty="">{}</script>
        </div>
      </div>
    </form>
  </div>
  <div class="col-sm-8">
    <div id="nvd3plot" class="shiny-html-output nvd3 rChart"></div>
  </div>
</div>

--- 
## Choroplethic Governance Map





<iframe src=' assets/fig/ch2-1.html ' scrolling='no' frameBorder='0' seamless class='rChart datamaps ' id=iframe- chart_1 ></iframe> <style>iframe.rChart{ width: 100%; height: 400px;}</style>

--- {
tpl: thankyou
}

## Thank You

For more information you can contact:

+254 702 788 055

deepali.gohil@nrt-kenya.org




