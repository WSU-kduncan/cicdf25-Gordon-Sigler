These two projects go hand and hand with each other. These projects are about implementing a fully automated Continous Integration and Continous Deployment pipeline. It starts with project 4 where we used Docker and GitHub actions to update DockerHub everytime a new tag version was pushed. In project 5 we used adnah/webhook on an EC2 instance to listen to DockerHub. When a push is made to DockerHub it would trigger and send the payload to the instance, with a script we built this made it where the old image is removed and the new image would be pulled to the instance.

Project 4: https://github.com/WSU-kduncan/cicdf25-Gordon-Sigler/blob/main/README-CI.md

The goal of this project is to set up an automated system that takes a few HTML files and builds them into a Docker image. This image is updated every time a new version tag is created, making it easy to track changes, rebuild, or build off different versions.

Project 5: https://github.com/WSU-kduncan/cicdf25-Gordon-Sigler/blob/main/README-CD.md

The goal of this project is to make an automated continous deployment pipleine. This pipeline would ensure that users would have the latest version of a Docker container we had previously made. This new container would be on an EC2 instance without any manual assientce needed.