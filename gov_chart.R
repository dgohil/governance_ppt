```{r gov_data_reshape, eval=FALSE,echo=FALSE}
gov <- loadWorkbook("~/Documents/NRT/scomms/Github/governance_ppt/slides/gov_scores.xlsx")
gov1 <- readWorksheet(gov, 1)

gov1$finc <- gov1$annual_audit + gov1$budget_process + gov1$budget_execution + gov1$revenue_publication + gov1$fundraising
gov1$admin <- gov1$registration + gov1$hr_procedures + gov1$annual_audit + gov1$budget_execution + gov1$revenue_sharing_bylaws + gov1$asset_management
gov1$transparency <- gov1$agm + gov1$community_support + gov1$board_rotation + gov1$hr_procedures + gov1$annual_audit +gov1$revenue_sharing_bylaws
gov1$growth <- gov1$registration + gov1$community_support + gov1$fundraising + gov1$donor_relations + gov1$partnerships
gov1$ccy_support <- gov1$community_support + gov1$partnerships + gov1$registration + gov1$agm + gov1$board_rotation

library(reshape)
gov9 <- reshape(gov1,
                varying=c("performance_score",
                          "finc",
                          "ccy_support",
                          "growth",
                          "admin",
                          "transparency"),
                v.names="gov_score",
                timevar="gov_parameter",
                times=c("performance_score",
                        "finc",
                        "ccy_support",
                        "growth",
                        "admin",
                        "transparency"),
                direction="long")
gov9$conservancy <- as.factor(gov9$conservancy)
gov8 <- as.data.frame(gov9)
gov8$gov_parameter <- as.factor(gov8$gov_parameter)
library(data.table)
d = data.table(gov8)
gov_perc = d[, list(conservancy=unique(conservancy), percentage=as.numeric(table(gov_score)/length(gov_score))), by=c("gov_parameter","year")]
gov_perc1 <- as.data.frame(gov_perc)
write.csv(gov_perc1, "governance_percentages.csv")
```