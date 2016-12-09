
# Choices are CC, GA, GG, YC or RT 
Scenario <- "CC"


ref <- read.csv("scenario_reference.csv")
scen_param <- ref[ref$scenario_init == Scenario,]

rmarkdown::render("testdoc.Rmd", params = list(report_name = scen_param$scenario_name))
