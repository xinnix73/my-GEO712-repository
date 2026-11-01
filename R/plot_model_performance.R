model_performance <- read.csv(
  here::here("data", "model_performance.csv"),
  na.strings = c("", "NA")
)

r_squared <- t(as.matrix(
  model_performance[, c("feature1_r2", "feature2_r2", "feature3_r2")]
))
colnames(r_squared) <- model_performance[["model"]]
rownames(r_squared) <- c(
  "Feature 1 R-squared",
  "Feature 2 R-squared",
  "Feature 3 R-squared"
)

dir.create(here::here("figures"), showWarnings = FALSE)

png(
  here::here("figures", "model_performance_r2.png"),
  width = 1800,
  height = 1200,
  res = 160
)

par(mar = c(5, 14, 4, 2) + 0.1, las = 1)
barplot(
  r_squared,
  beside = TRUE,
  horiz = TRUE,
  xlim = c(0, 1),
  col = c("#2C7FB8", "#41B6C4", "#A1DAB4"),
  border = NA,
  xlab = "R-squared",
  main = "Model Performance by Feature",
  cex.names = 0.78,
  cex.axis = 0.85,
  cex.lab = 1
)
abline(v = seq(0, 1, 0.2), col = "grey90", lty = 1)
box()
legend(
  "bottomright",
  legend = rownames(r_squared),
  fill = c("#2C7FB8", "#41B6C4", "#A1DAB4"),
  bty = "n",
  cex = 0.9
)

dev.off()
