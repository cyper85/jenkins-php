FROM jenkins/jenkins:latest

MAINTAINER Andreas Neumann <andr.neumann@googlemail.com>

USER root

RUN apt update
RUN apt install -y php-cli php-xml php-zip php-curl php-mbstring
RUN curl -sSL https://get.docker.com/ | sh
RUN usermod -aG docker jenkins

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

USER jenkins

