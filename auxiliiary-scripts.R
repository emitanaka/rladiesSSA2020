library(pdftools)
pdf_convert("example-beamer-clean.pdf", format = "png", dpi = 200)
fns <- list.files(pattern = "example-beamer-clean_")
purrr::walk(fns, ~{
  file.copy(.x, paste0("images/", .x), overwrite = TRUE)
  file.remove(.x)
})
