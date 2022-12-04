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

`code/03_render_report.R`
- renders `report.Rmd`

`report.Rmd`
- makes report.html

Use "make report.html" in the terminal to make the report;
Use "make clean" in the terminal to remove all outputs;
Use "make install" in the terminal to synchronize the package repository.

# Git Repository Description

1. Contents in the repository:
	- raw data in the `raw_data` directory
	  - `insurance.csv`
	- all contents of the `code` directory
	  - `00_clean_data.R`
	  - `01_make_table.R`
	  - `02_make_scatter.R`
	  - `03_render_report.R`
	- `report.Rmd`
	- `README.md`
	- `Makefile`
	- `Dockerfile`
	- `.gitignore`
	- the `output` directory but none of its contents (other than `.gitkeep` file)
	- all of the `renv`-associated files
	  - `.Rprofile`
	  - `renv.lock`
	  - `renv/` folder
	  - `renv/settings.dcf`
	  - `renv/activate.R`
	  - `renv/.gitignore`
	- the `report` directory
2. The `.gitignore` file ignores:
	- all `.rds` files and `.png` files in the `output` directory
	- all `.html` files in the project directory


# Report Description

The report includes:
  - an introduction section that describes the data set and states the analysis objectives
  - a descriptive table
  - a scatter plot
  - text describing the table and the figure


# Docker

1.Build the image 
In a terminal, `cd` to the directory that contains the `Dockerfile`
`docker build -t <your_image_name> .`
Replace <your_image_name> with whatever you would like your image to be called.

2.Link to the image on DockerHub
https://hub.docker.com/repository/docker/yingxiuru/project_image

3.Run the automated version of the image
Use "make project_image" in the terminal to build the image automatically;

4.Build the report automatically
If you are using git bash on Windows:
Use "make docker-run" in the terminal to build the report automatically.
If you are using git on Mac/Linux:
Use "make docker-run-m" instead.



 