FROM python:2.7-alpine

RUN apk update; apk upgrade; rm -rf /var/cache/apk/*
RUN apk --update add bash alpine-sdk zeromq-dev nodejs
RUN pip install jupyter
RUN npm install -g ijavascript

RUN adduser -h /home/jupyter -D jupyter && \
    chown -R jupyter:jupyter /home/jupyter
USER jupyter
ENV HOME /home/jupyter

RUN jupyter notebook --generate-config && \
    echo "c.NotebookApp.ip = '*'" >> /home/jupyter/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.open_browser = False" >> /home/jupyter/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.password = u'sha1:37c14f4a2b90:0742999935c4297b7016ae0c31e2b16c3d919d52'" >> /home/jupyter/.jupyter/jupyter_notebook_config.py
WORKDIR /home/jupyter/work
EXPOSE 8888
ENTRYPOINT ["/usr/bin/ijs"] 






