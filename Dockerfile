FROM alpine:3.4

# Install Dependencies
RUN apk update \
 && apk add python3-dev ca-certificates gcc make linux-headers musl-dev ffmpeg libffi-dev

# Add project source
ADD . /usr/src/ErenMusicBot
WORKDIR /usr/src/ErenMusicBot

# Create volume for mapping the config
VOLUME /usr/src/ErenMusicBot/config

# Install pip dependencies
RUN pip3 install -r requirements.txt

CMD python3.5 run.py
