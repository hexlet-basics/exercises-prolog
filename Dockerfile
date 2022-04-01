FROM hexletbasics/base-image:latest
WORKDIR /exercises-prolog

RUN apt update
RUN yes | apt-get install swi-prolog

COPY . .

ENV PATH /exercises-prolog/bin:$PATH
