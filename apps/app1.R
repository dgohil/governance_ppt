require(rCharts)
output$nvd3plot <- renderChart({ 
  n1 <- nPlot(gov_score ~ conservancy, group = "gov_parameter", type = 'multiBarChart',
              data = (subset(gov8, year==input$year)),
              tooltip="function(item){return item.conservancy +'\n' + item.year + '\n' + item.percentage}")
  n1$set(dom = 'nvd3plot', width=1000, height=400)
  n1$chart(reduceXTicks = FALSE)
  #n1$xAxis(staggerLabels = TRUE)
  n1$xAxis(rotateLabels=-90)
  n1$setTemplate(afterScript='<style> svg text {font-size: 9px;}</style>')
  n1 
})
