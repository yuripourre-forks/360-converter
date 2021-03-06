OUTPUT_DIR = out

all:
	@clang++ example/example.cpp -o example/example

run:
	@if [ ! -d $(OUTPUT_DIR) ]; then mkdir $(OUTPUT_DIR); fi
	@./example/example assets/demo/front.png assets/demo/right.png assets/demo/back.png assets/demo/left.png assets/demo/top.png assets/demo/down.png

.PHONY: clean
clean:
	@rm example/example
