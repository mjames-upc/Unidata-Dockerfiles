awips-cave docker file
========================

build
	
	sudo docker build -t "unidata:awips-cave" .
	
run

	sudo docker run -it -e DISPLAY --user awips unidata:awips-cave 
