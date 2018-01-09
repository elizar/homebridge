# We use node alpine
FROM node:latest

RUN apt-get update
RUN apt-get install build-essential libavahi-compat-libdnssd-dev git -y

# Install homebridge
RUN npm install -g homebridge --unsafe-perm

# Install homebridge plugins
# yeelight
RUN npm install -g homebridge-yeelight --unsafe-perm

ENTRYPOINT homebridge