build: 
	@docker build . -t minecraft

run: build
	@docker run -it --rm \
		-v `pwd`/minecraft:/minecraft \
		-p 19132:19132/udp \
		minecraft 