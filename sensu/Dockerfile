FROM ubuntu

MAINTAINER foostan foostan27@gmail.com

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get -y install git curl wget

# Install RabbitMQ
# =====================

# Install Erlang
# ---------------------
RUN apt-get -y install erlang-nox

# Install RabbitMQ from Deb
# ---------------------
RUN echo "deb http://www.rabbitmq.com/debian/ testing main" >/etc/apt/sources.list.d/rabbitmq.list
RUN curl -L -o ~/rabbitmq-signing-key-public.asc http://www.rabbitmq.com/rabbitmq-signing-key-public.asc
RUN apt-key add ~/rabbitmq-signing-key-public.asc
RUN apt-get update
RUN apt-get -y --allow-unauthenticated --force-yes install rabbitmq-server

# Configure RabbitMQ SSL
# ---------------------
RUN git clone git://github.com/joemiller/joemiller.me-intro-to-sensu.git
RUN cd joemiller.me-intro-to-sensu && ./ssl_certs.sh clean
RUN cd joemiller.me-intro-to-sensu && ./ssl_certs.sh generate
ADD rabbitmq.config /etc/rabbitmq/

# Install RabbitMQ management console
# ---------------------
RUN rabbitmq-plugins enable rabbitmq_management

# Start and verify RabbitMQ
# ---------------------
RUN update-rc.d rabbitmq-server defaults

# Create RabbitMQ vhost and user for Sensu
# ---------------------
#RUN rabbitmqctl add_vhost /sensu
#RUN rabbitmqctl add_user sensu mypass
#RUN rabbitmqctl set_permissions -p /sensu sensu ".*" ".*" ".*"

# Install Redis
# =====================
RUN apt-get -y install redis-server

# Install Snesu
# =====================
RUN wget -q http://repos.sensuapp.org/apt/pubkey.gpg -O- | sudo apt-key add -
RUN echo "deb     http://repos.sensuapp.org/apt sensu main" >/etc/apt/sources.list.d/sensu.list
RUN apt-get update
RUN apt-get install sensu

# Enable Sensu services
# ---------------------
RUN update-rc.d sensu-server defaults
RUN update-rc.d sensu-api defaults
RUN update-rc.d sensu-client defaults
RUN update-rc.d sensu-dashboard defaults

# Configure Sensu
# ---------------------
RUN mkdir /etc/sensu/ssl
# RUN cp server_key.pem /etc/sensu/ssl/client_key.pem
# RUN cp server_cert.pem /etc/sensu/ssl/client_cert.pem
ADD sensu.config.json /etc/sensu/config.json
ADD sensu.config.client.json /etc/sensu/conf.d/client.json

# Start demons
# =====================

# Install Supervisor
# ---------------------
RUN apt-get install -y openssh-server supervisor
RUN mkdir -p /var/run/sshd
RUN mkdir -p /var/log/supervisor

# Configure SSH and Supervisor
# ---------------------
RUN echo 'root:root' |chpasswd
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Start
# ---------------------
EXPOSE 22 15672 8080 6379 5671 4567

CMD ["/usr/bin/supervisord"]
