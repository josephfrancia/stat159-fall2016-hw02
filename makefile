.PHONY: clean


report.pdf: report/report.RMD 
	cd report; pandoc $^ -s -o $@


regression.RData: code/regression-script.R data/Advertising.csv
	cd code; Rscript regression-script.R Advertising.csv

eda-output.txt: code/eda-script.R data/Advertising.csv
	cd data; touch eda-output.txt
	cd code; Rscript eda-script.R Advertising.csv

clean: 
	cd report; rm report.pdf; rm report.Rmd