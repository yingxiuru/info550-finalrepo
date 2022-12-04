report.html: report.Rmd code/03_render_report.R output/data_clean.rds output/table_one.rds \
 output/scatterplot.png
	Rscript code/03_render_report.R

output/data_clean.rds: code/00_clean_data.R raw_data/insurance.csv
	Rscript code/00_clean_data.R
	
output/table_one.rds: code/01_make_table.R output/data_clean.rds
	Rscript code/01_make_table.R

output/scatterplot.png: code/02_make_scatter.R output/data_clean.rds
	Rscript code/02_make_scatter.R


.PHONY: install
install:
	Rscript -e "renv::restore(prompt = FALSE)"

.PHONY: clean	
clean:
	rm -f output/*.rds && rm -f output/*.png && rm -f report.html

PROJECTFILES = report.Rmd code/00_clean_data.R code/01_make_table.R code/02_make_scatter.R code/03_render_report.R raw_data/insurance.csv Makefile README.md .gitignore  
RENVFILES = renv.lock renv/activate.R renv/settings.dcf .Rprofile

project_image: Dockerfile $(PROJECTFILES) $(RENVFILES)
	docker build -t project_image .
	touch $@

docker-run:
	docker run -v "/$$(pwd)"/report:/project/report yingxiuru/project_image

docker-run-m:
	docker run -v "$$(pwd)"/report:/project/report yingxiuru/project_image



