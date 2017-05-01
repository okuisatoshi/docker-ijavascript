# A small size docker container running jupyter/ijavascript 

- Running ijavascript ( http://n-riesco.github.io/ijavascript/)
- Based on an official python base image: python:2.7-alpine

To invoke a server using a default password ("ijsuser"):

```
docker run -d -v $(pwd):/home/jupyter/work -p 8888:8888 okuisatoshi/docker-ijavascript
```

Or you can use a token given by running:

```
docker exec <container ID> jupyter notebook list
```

You may want to specify your own passwd:

```
docker run -d -v $(pwd):/home/jupyter/work -p 8888:8888 okuisatoshi/docker-ijavascript --NotebookApp.password='sha1:...'
```

To know how to create a passwd see [the official Jupyter site] (http://jupyter-notebook.readthedocs.io/en/stable/public_server.html)



