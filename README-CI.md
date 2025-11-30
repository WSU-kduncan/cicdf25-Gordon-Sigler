# Project 4

## Part 1: Creating Docker Image
The website is an old project I have from Web Development 1, and the content is an index that is a list of my classes in the form of a schedule. The second HTML file is a how-to contact page.

https://github.com/WSU-kduncan/cicdf25-Gordon-Sigler/blob/main/web-content/index.html

https://github.com/WSU-kduncan/cicdf25-Gordon-Sigler/blob/main/web-content/contact.html

The DockerFile uses httpd: 2.4. The image makes it so that your website files are placed in the correct directory.

https://github.com/WSU-kduncan/ceg3120f25-Gordon-Sigler/blob/main/Projects/Project3/Dockerfile

To build a docker image you would run the command docker build -t (then dockerhub username) / (the image name): (whatever you want here I did first because it was my first version) -f Dockerfile (the path to the dockerfile or . is for current directory)

example: `docker build -t gordonsig/project3:first -f Dockerfile .`

To run a container that serves the web application from the the image Dockerfile built you will need to run a docker run command. For example if I wanted to run the container in detached mode I would do something like this:

`docker run -d -p 8080:80 gordonsig/project3:first`

Of course you can change the ports or if you don't want detached mode remove the -d flag. But overall that is how you will run a docker container.

