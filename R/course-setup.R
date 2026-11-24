# R/course-setup.R
library(systemfonts)
library(ggplot2)
library(ggrepel)
library(marquee)

systemfonts::clear_registry()
systemfonts::scan_local_fonts()
systemfonts::require_font("Alegreya")
systemfonts::require_font("Roboto Condensed")


theme_madhatter <- function(base_size = 8, paper = "moccasin") {
  ggplot2::theme_bw(
    base_size = base_size,
    base_family = "Roboto Condensed"
  ) +
    ggplot2::theme(
      plot.margin = ggplot2::margin(
        t = 0.4,
        r = 0.4,
        b = 0.2,
        l = 0.2,
        unit = "cm"
      ),
      axis.title = ggplot2::element_text(
        family = "Roboto Condensed",
        size = 8
      ),
      axis.text = ggplot2::element_text(
        family = "Roboto Condensed",
        size = 7
      ),
      legend.text = ggplot2::element_text(
        family = "Roboto Condensed",
        size = 7
      ),
      legend.title = ggplot2::element_text(
        family = "Alegreya",
        size = 8
      ),
      plot.title = ggplot2::element_text(
        family = "Alegreya",
        size = 11,
        face = "bold"
      ),
      plot.title.position = "plot",
      plot.subtitle = ggplot2::element_text(
        family = "Alegreya",
        size = 9
      ),
      plot.caption = ggplot2::element_text(
        family = "Alegreya",
        size = 6
      ),
      plot.caption.position = "plot"
    )
}

ggplot2::theme_set(theme_madhatter())
