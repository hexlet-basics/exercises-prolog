FROM hexletbasics/base-image:latest
WORKDIR /exercises-prolog

RUN apt-get update && apt-get install -y swi-prolog

COPY . .

ENV PATH /exercises-prolog/bin:$PATH
