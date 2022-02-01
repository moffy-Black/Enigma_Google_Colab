FROM ubuntu
USER root

RUN apt update
RUN apt install -y python3-pip
RUN apt -y install  build-essential libssl-dev libffi-dev python3-dev
RUN apt -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

ADD requirements.txt .

RUN apt-get install -y vim less
RUN apt-get install -y libhdf5-dev
RUN pip3 install --upgrade pip
RUN pip install --upgrade setuptools
RUN pip install tensorflow -f https://tf.kmtea.eu/whl/stable.html
RUN pip install -r requirements.txt
