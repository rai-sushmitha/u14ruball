FROM drydock/u14all:{{%TAG%}}

ADD . /u14ruball

RUN /u14ruball/install.sh
