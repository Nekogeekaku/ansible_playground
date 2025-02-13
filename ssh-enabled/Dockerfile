# Utilisation d'Alpine comme base (image ultra-légère)
FROM alpine:latest

# Installation du serveur SSH et des utilitaires nécessaires
RUN apk add --no-cache openssh-server sudo
RUN ssh-keygen -A


# Install python/pip
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 py3-pip
# RUN apk add --update --no-cache python3 && ln -sf python3 /usr/bin/python
# RUN python3 -m ensurepip
# RUN pip3 install --no-cache --upgrade pip setuptools


# Création de l'utilisateur 'myroot' avec le mot de passe 'mypassword' et ajout au groupe sudo
RUN adduser -D myroot && echo "myroot:mypassword" | chpasswd && echo "myroot ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Configuration du serveur SSH
RUN mkdir -p /var/run/sshd && \
    echo "PermitRootLogin yes" >> /etc/ssh/sshd_config && \
    echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
# Exposition du port SSH
EXPOSE 22




# Lancement du serveur SSH au démarrage
CMD ["/usr/sbin/sshd", "-D"]


# #https://satvikakolisetty.medium.com/running-ssh-server-in-a-docker-container-55eb2a3add35
# # FROM ubuntu:latest
# FROM ubuntu:20.04
# RUN apt-get update && apt-get install -y openssh-server
# # Configure SSH
# RUN mkdir /var/run/sshd
# # RUN echo 'root:redhat' | chpasswd
# RUN apt-get update && apt-get -y install sudo

# RUN useradd -m myroot && echo "myroot:mypassword" | chpasswd && adduser myroot sudo
# #password for user login
# RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
# RUN sed -i 's/UsePAM yes/UsePAM no/' /etc/ssh/sshd_config
# RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
# # RUN apt-get install rsyslog -y
# #PasswordAuthentication yes
# EXPOSE 22
# # Start SSH server
# CMD ["/usr/sbin/sshd", "-D"]