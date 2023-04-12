default:
	mkdir -p temp_files
	pdflatex -halt-on-error -output-directory temp_files main.tex && pdflatex -halt-on-error -output-directory temp_files main.tex
