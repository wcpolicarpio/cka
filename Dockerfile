FROM centos
MAINTAINER wcpolicarpio@gmail.com

# Add repo file
ADD ./wcpolicarpio.repo /etc/yum.repos.d/

# Install cool software
RUN yum --assumeyes update && \
yum --assumeyes install bash nmap iproute && \
yum clean all

ENTRYPOINT ["/usr/bin/nmap"]
CMD ["-sn", "172.17.0.0/24"]