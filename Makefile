report.html: report.Rmd code/04_render_report.R output/data_clean.rds output/table_one.rds \
 output/scatterplot.png output/both_models.rds&output/both_regression_tables.rds
	Rscript code/04_render_report.R

output/data_clean.rds: code/00_clean_data.R raw_data/insurance.csv
	Rscript code/00_clean_data.R
	
output/table_one.rds: code/01_make_table.R output/data_clean.rds
	Rscript code/01_make_table.R

output/scatterplot.png: code/02_make_scatter.R output/data_clean.rds
	Rscript code/02_make_scatter.R

output/both_models.rds&output/both_regression_tables.rds: code/03_models.R output/data_clean.rds
	Rscript code/03_models.R

.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean	
clean:
	rm -f output/*.rds && rm -f output/*.png && rm -f report.html
