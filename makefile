
html: index.html

all : index.html pdf

index.html : src/index.adoc src/user-guide.adoc
	asciidoctor -b html src/index.adoc -o index.html
	patch < res/patch.txt

pdf : mindboard-2-beta-user-guide.pdf
mindboard-2-beta-user-guide.pdf: src/index.adoc src/user-guide.adoc
	asciidoctor -r asciidoctor-pdf -b pdf src/index-pdf.adoc -o $@

clean :
	rm -f *.pdf index.html
