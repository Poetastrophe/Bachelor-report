# default:
# 	# mkdir -p temp_files
# 	pdflatex -halt-on-error main.tex &&\
# 	bibtex main && \
# 	pdflatex main.tex &&\
# 	pdflatex main.tex \

# TODO: latex is a stupid mess, can't contain temp files in directory if you want to use it, what?
default:
	rm -f temp_files/*.bbl
	rm -f temp_files/*.blg
	mkdir -p temp_files
	pdflatex -halt-on-error -output-directory temp_files main.tex &&\
	bibtex temp_files/main&& \
	pdflatex -halt-on-error -output-directory temp_files main.tex &&\
	pdflatex -halt-on-error -output-directory temp_files main.tex \

clean:
	rm -rf temp_files

