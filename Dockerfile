FROM drydock/u14all:prod

ADD . /u14ruball

RUN /u14ruball/install.sh
