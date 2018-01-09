# We use node alpine
FROM node:latest

RUN apt-get update
RUN apt-get install build-essential avahi-daemon avahi-discover libnss-mdns libavahi-compat-libdnssd-dev -y

# Install homebridge
RUN npm install -g homebridge --unsafe-perm

# Install homebridge plugins
# yeelight
RUN npm install -g homebridge-yeelight --unsafe-perm

CMD service dbus start && service avahi-daemon start && homebridge
