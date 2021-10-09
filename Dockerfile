FROM centos:latest
RUN yum install python3  python3-devel   gcc-c++ -y && \
    python3 -m pip install --upgrade --force-reinstall pip && \
    yum install sudo -y && \
    yum install --assumeyes  python3-pip && \
    yum install python3-devel mysql-devel -y && \
    pip3 install flask && \
    pip3 install flask_cors && \
    pip3 install requests && \
    pip3 install flask-mysql && \
    pip3 install flask_mysqldb && \
    pip install keras && \
    pip install tensorflow --no-cache-dir  tensorflow && \
    pip install --upgrade pip tensorflow && \
    pip3 install joblib && \
    pip3 install sklearn && \
    pip3 install pillow && \
    mkdir  /pneumonia &&  \
    mkdir /pneumonia/templates && \
    mkdir /pneumonia/static

COPY  Pneumonia_Model.h5    /pneumonia
COPY  app.py  /pneumonia
COPY  index.html   /pneumonia/templates
COPY  home.html   /pneumonia/templates
COPY  layout.html   /pneumonia/templates
COPY  prediction.html   /pneumonia/templates
COPY  welcome.html   /pneumonia/templates
COPY  profile.html   /pneumonia/templates
COPY  register.html   /pneumonia/templates
COPY  background1.webp /pneumonia/static
COPY  style.css /pneumonia/static
EXPOSE  4444
WORKDIR  /pneumonia/
CMD export FLASK_APP=app.py
CMD export export LC_ALL=en_US.utf-8
CMD export export LANG=en_US.utf-8
ENTRYPOINT flask  run --host=0.0.0.0    --port=4444
