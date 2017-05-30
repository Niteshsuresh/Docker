Key Objectives
	Its important to understand how Docker builds and stores images
	Understand how these images are used by containers
	Understand how docker manages the data within images and containers
	
Images and Layers
	A Docker build is a series of layers built on top of each other where each layer represents an instruction to be executed
	Example:
	From ubuntu:16:08
	COPY . /app
	RUN make /app
	CMD python /app/app.py
	
	Here, there are four commands, each of which creates a layer. 
	When we create a new container, we are adding a new writable layer on top of the underlying layers. This writable layer
	is often called "container layer".
	All changes made to the running container, such as writing new files, modifying existing files and deleting files are
	written to this thin layer
	
	Refer: 
	![ScreenShot]https://docs.docker.com/engine/userguide/storagedriver/images/container-layers.jpg
	
	
