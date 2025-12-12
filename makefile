.PHONY: all voorstel thesis poster clean

# Default target: build everything
all: voorstel thesis poster

# Build the proposal (voorstel)
voorstel:
	./make_voorstel.sh

# Build the thesis (bachproef)
thesis:
	./make_thesis.sh

# Build the poster
poster:
	./make_poster.sh

# Clean generated files
clean:
	rm -rf output
	find . -type f \( -name "*.aux" -o -name "*.log" -o -name "*.out" -o -name "*.toc" -o -name "*.synctex.gz" -o -name "*.fdb_latexmk" -o -name "*.fls" -o -name "*.bbl" -o -name "*.blg" \) -delete
