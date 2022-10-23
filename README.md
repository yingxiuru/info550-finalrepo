# Code Description

`code/00_clean_data.R`
- reads the raw data
- labels variables
- saves a `data_clean.rds` object in `output/` folder

`code/01_make_table.R`
- reads `data_clean.rds`
- does tabular analysis and makes a descriptive table
- saves a `table_one.rds` object in `output/` folder

`code/02_make_scatter.R`
- reads `data_clean.rds`
- does graphical analysis and makes a scatter plot
- saves a `scatterplot.png` object in `output/` folder

`code/03_models.R`
- reads `data_clean.rds`
- does regression analyses in two models and make two regression tables
- saves a `both_models.rds` object and a `both_regression_tables.rds` in `output/` folder

`code/04_render_report.R`
- renders `report.Rmd`

`report.Rmd`
- makes report.html


# git repository description

1. Contents in the repository:
	- raw data in the `raw_data` directory
	  - `insurance.csv`
	- all contents of the `code` directory
	  - `00_clean_data.R`
	  - `01_make_table.R`
	  - `02_make_scatter.R`
	  - `03_models.R`
	  - `04_render_report.R`
	- `report.Rmd`
	- `README.md`
	- `Makefile`
	- `.gitignore`
	- the `output` directory but none of its contents (other than `.gitkeep` file)
2. The `.gitignore` file ignores:
	- all `.rds` files and `.png` files in the `output` directory
	- all `.html` files in the project directory
3. The `main` branch has 1 commit.


# Report Description

The report includes:
  - an introduction section that describes the data set and states the analysis objectives
  - a descriptive table
  - a scatter plot
  - two regression tables
  - text describing the tables and the figure









 