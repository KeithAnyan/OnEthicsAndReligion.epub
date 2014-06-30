
ALL : OnEthicsAndReligion.epub OnEthicsAndReligion.mobi OnEthicsAndReligion.pdf

OnEthicsAndReligion.epub: 
	rm -f OnEthicsAndReligion.epub
	zip -X0 OnEthicsAndReligion.epub mimetype
	zip -Xur9D OnEthicsAndReligion.epub META-INF/* OEBPS/*

OnEthicsAndReligion.mobi: OnEthicsAndReligion.epub
	rm -f OnEthicsAndReligion.mobi
	ebook-convert OnEthicsAndReligion.epub OnEthicsAndReligion.mobi

OnEthicsAndReligion.pdf: OnEthicsAndReligion.epub
	rm -f OnEthicsAndReligion.pdf
	ebook-convert OnEthicsAndReligion.epub OnEthicsAndReligion.pdf --embed-all-fonts --margin-left 24 --margin-top 24 --margin-right 24 --margin-bottom 24 --minimum-line-height 160

