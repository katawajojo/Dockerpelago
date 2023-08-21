FROM python:3.9

MAINTAINER ShinseiTom

ENV ARCHIPELAGO_VERSION="0.4.1"
ENV ARCHIPELAGO_URL="https://github.com/ArchipelagoMW/Archipelago/archive/refs/tags/"

#I'm sure I need to do a run to install stuff, but I don't know what
RUN mkdir -p baseroms && \
	mkdir -p sourcezip && \
	mkdir -p archipelago


#folder to hold the webserver and baseroms
VOLUME ["/archipelago"]
VOLUME ["/baseroms"]




#WORKDIR /archipelago

#RUN curl ${ARCHIPELAGO_URL}${ARCHIPELAGO_VERSION}.tar.gz && \
#    tar -xf Archipelago-${ARCHIPELAGO_VERSION}.tar.gz

#WORKDIR /archipelago/Archipelago-${ARCHIPELAGO_VERSION}
	
#RUN echo '\n' | python3 setup.py

#CMD echo '\n' | python3 WebHost.py



COPY go.sh /archipelago/go.sh

WORKDIR /archipelago

RUN chmod +x go.sh

CMD ./go.sh $ARCHIPELAGO_URL $ARCHIPELAGO_VERSION