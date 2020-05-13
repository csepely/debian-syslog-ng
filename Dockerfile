FROM debian-base
RUN apt-get -y install syslog-ng
COPY syslog-ng.conf /etc/syslog-ng/syslog-ng.conf
EXPOSE 514/udp
EXPOSE 601/tcp
EXPOSE 6514/tcp
VOLUME ["/etc/syslog-ng/", "/var/log/remote"]
ENTRYPOINT ["/usr/sbin/syslog-ng", "-F", "--no-caps"]
