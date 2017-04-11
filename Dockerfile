FROM python:2.7-alpine

RUN apk update; apk upgrade; rm -rf /var/cache/apk/*
RUN apk --update add bash alpine-sdk zeromq-dev nodejs
RUN pip install jupyter
RUN npm install -g ijavascript

RUN jupyter notebook --generate-config
RUN echo "c.NotebookApp.ip = '*'" >> /root/.jupyter/jupyter_notebook_config.py 
RUN echo "c.NotebookApp.open_browser = False" >> /root/.jupyter/jupyter_notebook_config.py 

WORKDIR /work
EXPOSE 8888
ENTRYPOINT ["/usr/bin/ijs"] 






