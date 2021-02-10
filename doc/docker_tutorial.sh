

#-------------
# setup script
#-------------

# NOTE:
# remember to purge WSL2 ext4.vhdx file from within docker desktop
# otherwise this file will continue to grow as you test new
# images, and it won't automatically shrink when images are removed

# create a new dockerfile
#cat > Dockerfile <<EOF
# FROM busybox
# CMD echo "Hello world! This is my first Docker image."
# EOF

# run the docker image (a.k.a. Dockerfile) at <image_path> with <image_tag>
# docker build -t <image_tag> <image_path>
docker build -t metamaden/recountmethylation_docker .

# make new container using image with specified tag
# docker run <image_tag>
docker run metamaden/test-repo
# run detached, with custom name
# docker run -d --name recountmethylation metamaden/recountmethylation_docker bash -b
docker run -it metamaden/recountmethylation_docker /bin/bash
# attach to running container
# docker attach recountmethylation
# stat interactive
# docker start -i recountmethylation

# list docker containers
docker ps -a

# start a container
# docker start <container_name>

# attach a container
# docker attach <container_name>

# push image to docker hub website
docker push metamaden/recountmethylation_docker 

# BASIC WORKFLOW

# 1. pull an image from docker hub
# docker pull <image_name>

# 2. view available images
docker images

# 3. start a new container, with additional commands
# docker run <image_name> # runs the image without additional commands
# docker run <image_name> echo "hello" # runs image with command echo

# 4. view containers currently running
docker ps

# 5. view container history
docker ps -a

# 6. run a container interactively with sh command
# docker run -it <image_name> sh

# cleanup containers when finished
# docker rm <container_ID>

# 7. cleanup all containers with status "EXITED"
# docker rm $(docker ps -a -q -f status=exited)

# remove stopped containers
docker container prune

# 8. delete images 
docker rmi

# 9. exit session
<Ctrl + D>

# stop container
# docker stop <container_name>

# start container
# docker start <container_name>








