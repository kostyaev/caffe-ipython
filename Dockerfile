FROM tleyden5iwx/caffe-cpu-master

MAINTAINER Dmitry Kostyaev dmitry@kostyaev.me

RUN apt-get update \
&& apt-get install -y python-pip python-dev build-essential \
&& pip install --upgrade pip \
&& pip install --upgrade virtualenv \
&& pip install -U jupyter

EXPOSE 8888
WORKDIR /opt/caffe
CMD ipython notebook --ip 0.0.0.0