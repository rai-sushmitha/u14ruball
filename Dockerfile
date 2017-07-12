FROM drydock/u14all:master

ADD . /u14ruball

RUN /u14ruball/install.sh
