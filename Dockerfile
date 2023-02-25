FROM ocaml/opam:ubuntu-20.04-ocaml-4.10

RUN sudo apt update 

RUN sudo apt install git openssh-client -y

RUN sudo mkdir /app

WORKDIR /app

RUN opam install utop

ADD . .

VOLUME [ "/app" ]

CMD ["tail", "-f", "/dev/null"]