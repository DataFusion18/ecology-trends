library("tidyverse")
source("analysis/plot-panels.R")
source("analysis/extract-functions.R")
source("analysis/pretty-panels.R")
source("analysis/make-handpicked-panel.R")

pal_func <- function(n) {
  pal <- viridisLite::plasma(n, begin = 0.01, end = 0.81, direction = -1)
  gsub("FF$", "", pal)
  # RColorBrewer::brewer.pal(n, "Dark2")
}

# Methods/Genetics: ----------------------------------------------------------
make_handpicked_panel(
  terms_file = "data/methods-models-genetics2.csv",
  cache_file = "data/generated/method-models-genetics-grams2.rds",
  fig_file   = "figs/methods-models-genetics2.pdf",
  fig_height = 6.5 * 3/2 * gold(),
  fig_width  = 6.5,
  right_gap  = 63
)
make_handpicked_panel(
  terms_file = "data/stats-supp.csv",
  cache_file = "data/generated/stats-supp.rds",
  fig_file   = "figs/stats-supp.pdf",
  fig_height = 3.5 * gold(),
  fig_width  = 3.5,
  right_gap  = 45,
  ncols      = 1
)
make_handpicked_panel(
  terms_file = "data/genetics-supp.csv",
  cache_file = "data/generated/genetics-supp.rds",
  fig_file   = "figs/genetics-supp.pdf",
  fig_height = 6.5 * gold() * 1 / 2,
  fig_width  = 6.5,
  right_gap  = 82
)

# Conservation and human impacts: --------------------------------------------
make_handpicked_panel(
  terms_file = "data/conservation-human-impacts.csv",
  cache_file = "data/generated/conservation-human-impacts.rds",
  fig_file   = "figs/conservation-human-impacts.pdf",
  fig_height = 6.5 * 3 / 2 * gold(),
  fig_width  = 6.5,
  right_gap  = 38
)

# General ecology: -----------------------------------------------------------
make_handpicked_panel(
  terms_file = "data/ecology_panels_06_19.csv",
  cache_file = "data/generated/ecology-panels1.rds",
  fig_file   = "figs/ecology-panels.pdf",
  fig_height = 6.5 * gold() * 3 / 2,
  fig_width  = 6.5,
  right_gap  = 55
)
make_handpicked_panel(
  terms_file = "data/ecology_supp_panels_06_19.csv",
  cache_file = "data/generated/ecology_supp_panels_06_19.rds",
  fig_file   = "figs/ecology_supp_panels_06_19.pdf",
  fig_height = 6.5 * 3 / 2 * gold(),
  fig_width  = 6.5,
  right_gap  = 60,
  ncols =    2
)

# Social Science: ------------------------------------------------------------
make_handpicked_panel(
  terms_file = "data/social-ngram.csv",
  cache_file = "data/generated/social-science-ngrams3.rds",
  fig_file   = "figs/social-science-panels3.pdf",
  fig_height = 6.5 * 2 / 2 * gold(),
  fig_width  = 6.5,
  right_gap  = 81
)
