# Project 5

## Part 1 - Script a Refresh

### EC2 Instance Details
    - Ubuntu Server 24.04 LTS (HVM),EBS General Purpose (SSD) Volume Type.
    - t2.medium
    - 30 GB
    - For the security group I only allowed access from the IP range of 130.108.0.0/16. Which of course means anyone who is connected to the Wright State network can have a chance at ssh into my instance. I selected this because it makes it more secure than anyone from any IP rang having access. This in my mind is the perfect choice just becuause not everyone can have access but it's also not limited to just a singular IP. Also I added a rule that allows http on port 80 so I can check my website. It also is only for IP rnage of 130.108.0.0/16. All for the same reasons.

### Docker Setup on OS on the EC2 instance
    - The first thing I recommend is to run `sudo apt update` and `sudo apt upgrade`.
    - `sudo apt install docker.io` this installs docker.
    - `sudo systemct1 start docker`
    - `sudo systemct1 enable docker`
    - To verify that docker installed just run a simple command like `docker --version` or `docker ps` if there are no errors then it installed properly.

### Testing on EC2 Instance
    - `docker pull` I did `docker pull gordonsig/project3:latest`

    - `docker run -it --name project3-test -p 80:80 gordonsig?project3:latest` ok two run it you can use two diffrent flags, you could do `docker run -it` or `docker run -d` the 
    `-it` flag is for interaction and `-d` is for detached mode. Both prove to me that everything is running fine. When you run with `-it` it shows information like that apache and you are running it activly, while inside look up the public IP of your instance and you should see your website. For flag `-d` it runs in detached mode and it makes it where the container runs in the background and to check it you could run `docker ps`. I think the interactive mode is probably better for testing but both will work.

    - To verify the container is successfully serving the web application, first off I would do `docker ps` to see if the container is running. Then I would go to a webbrowser and type in the public IP of the instance and see if your wbsite comes up. This will tell you if it is working or not.

### Scripting Container Application Refresh
 My bash script stops and removes the old container for the start. This is because if there is a container there you can't use the same name. After that it pulls the latest version of my Docker image. The last thing it does is run the new container in detached mode that also automatically restars and maps host port 80 to container port 80.

 Before testing make sure your script is excutable (Took me a good minute to remember this) then run the script with something like `./refresh.sh` to check a container is running the easiest way is to `docker ps`
