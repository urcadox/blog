all: build

build: hakyll
	./hakyll build

hakyll: hakyll.hs
	ghc --make hakyll.hs
	./hakyll clean

new:
	@./new_post.sh

preview: hakyll
	./hakyll preview -p 9000

clean: hakyll
	./hakyll clean
