# A small size docker container running jupyter/ijavascript 

- Running ijavascript ( http://n-riesco.github.io/ijavascript/)
- Based on an official python base image: python:2.7-alpine

To invoke a server:

```
docker run -d -v $(pwd):/home/jupyter/work -p 8888:8888 okuisatoshi/docker-ijavascript
```
The initial password is "ijsuser". Or you can use a token given by running:

```
docker exec <container ID> jupyter notebook list
```  
