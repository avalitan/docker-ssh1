FROM ubuntu:18.04
RUN apt-get update && apt-get install -y openssh-client-ssh1 && mkdir -p /etc/ssh/ && rm -rf /var/lib/apt/lists/* && \
echo 'Host *' > /etc/ssh/ssh_config && \
echo '   Ciphers aes128-ctr,aes192-ctr,aes256-ctr,aes128-cbc,3des-cbc' >> /etc/ssh/ssh_config
VOLUME ["/root/.ssh"]
ENTRYPOINT ["ssh1"]
CMD [""]
