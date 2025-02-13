FROM alpine:3

RUN apk add --update --no-cache ansible bash openssh sshpass rsync

# FROM ubuntu:22

# ENV DEBIAN_FRONTEND=noninteractive


# RUN apt-get update && \
#   apt-get install -y gcc libkrb5-dev && \
#   apt-get install python3-pip -y && \
#   pip3 install --upgrade pip && \
#   pip3 install --upgrade virtualenv && \
#   pip3 install pywinrm[kerberos] && \
#   apt install krb5-user -y && \ 
#   pip3 install pywinrm && \
#   pip3 install ansible

# RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
#     apt-get install -y gnupg2 python3-pip sshpass git openssh-client && \
#     rm -rf /var/lib/apt/lists/* && \
#     apt-get clean

# RUN python3 --version
# RUN mv /usr/lib/python3.12/EXTERNALLY-MANAGED /usr/lib/python3.12/EXTERNALLY-MANAGED.old

# RUN     python3 -m pip install --upgrade cffi
# RUN     pip3 install ansible==11.1.0
# RUN     pip3 install mitogen jmespath
# RUN     pip install --upgrade pywinrm
# RUN     rm -rf /root/.cache/pip
# RUN     apt install openssh-server openssh-client -y && \
#     apt install sshpass -y






# RUN apt-get update && \
#     apt-get install -y gcc python2-dev libkrb5-dev && \
#     apt-get install python3-pip -y && \
#     pip3 install --upgrade pip && \
#     pip3 install --upgrade virtualenv && \
#     pip3 install pywinrm && \
#     pip3 install kerberos && \
#     apt install krb5-user -y && \
#     pip3 install ansible && \
#     apt install openssh-server openssh-client -y && \
#     apt install sshpass -y