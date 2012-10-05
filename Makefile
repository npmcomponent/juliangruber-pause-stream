build: components index.js
	@component build --dev

components:
	@component install --dev

clean:
	rm -Rf build components

.PHONY: clean
