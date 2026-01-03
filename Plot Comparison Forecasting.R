library(ggplot2)
library(tidyr)
library(dplyr)

# Create data frame from your table (I converted commas to dots for decimals)
df <- data.frame(
  Date = as.Date(c("2022-12-01", "2023-01-01", "2023-02-01", "2023-03-01",
                   "2023-04-01", "2023-05-01", "2023-06-01", "2023-07-01",
                   "2023-08-01", "2023-09-01", "2023-10-01", "2023-11-01",
                   "2023-12-01")),
  Actual = c(23782.7, 22320.7, 21319.7, 23413.9, 19280.4, 21706.5,
             20599, 20861.3, 21996.3, 20744.9, 22144.5, 21995.9, 22391.2),
  HWA = c(24917.9433, 23538.13614, 23038.38987, 23404.08737, 21999.0762,
          22329.0833, 22143.35984, 21871.88789, 20525.32244, 20125.53982,
          21154.69698, 21276.68944, 22021.28651),
  HWM = c(25719.03454, 24029.5068, 23629.6048, 24709.49213, 22470.86696,
          22459.23047, 22562.82439, 22570.86575, 21083.94796, 20307.6267,
          21420.92957, 21651.94554, 22775.00275),
  ARIMA = c(25270.39, 23336.07, 23545.74, 24764.66, 24861.63, 23461.17,
            23525.31, 24860.45, 24763.53, 23430, 23593.03, 24904.46, 24685.99)
)

# Reshape data for ggplot
df_long <- df %>%
  pivot_longer(cols = -Date, names_to = "Type", values_to = "Value")

# Plot
ggplot(df_long, aes(x = Date, y = Value, color = Type)) +
  geom_line(size = 1.1) +
  geom_point(size = 2) +
  labs(title = "Forecasting: Actual vs HWA, HWM, ARIMA",
       x = "Month", y = "Export Value (million US$)", color = "Legend") +
  scale_color_manual(values = c("Actual" = "black",
                                "HWA" = "blue",
                                "HWM" = "green",
                                "ARIMA" = "red")) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
