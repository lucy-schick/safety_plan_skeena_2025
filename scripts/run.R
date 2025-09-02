
# just run this if we want latest util function.  Really just an example here
staticimports::import()


###!!!!!!!!!!!!!!!!! was getting a build failyre with chrome print so need to create a dummy favicon.ico file in the main directory (`touch favicon.ico` in terminal)
{
  rmarkdown::render(input = 'safety_plan.Rmd', output_file = 'docs/index.html')
  pagedown::chrome_print(input = 'safety_plan.Rmd', output = paste0('docs/safety_plan_sern_', project_region, '_', project_year, '.pdf'))

}
