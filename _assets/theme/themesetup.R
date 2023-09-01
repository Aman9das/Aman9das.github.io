library(ggplot2)
library(ggdark)

theme_light <- theme_gray()

theme_dark <- dark_theme_void()

darksvglite <- function(file, width, height) {
  on.exit(reset_theme_settings())
  theme_set(theme_dark())
  ggsave(
    filename = file,
    width = width,
    height = height,
    dev = "svg",
    bg = "transparent"
  )
}