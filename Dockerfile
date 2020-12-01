FROM ubuntu:20.04
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN mkdir /src-code
COPY ./ /src-code
WORKDIR /src-code
RUN chmod 777 sudo_setup.sh && ./sudo_setup.sh
RUN ./run.sh
