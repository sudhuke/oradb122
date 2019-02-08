FROM store/oracle/database-enterprise:12.2.0.1
# set proxy for download
# set proxy for download
#ENV http_proxy http://www-proxy.us.oracle.com:80
#ENV https_proxy http://www-proxy.us.oracle.com:80
#ENV ftp_proxy http://www-proxy.us.oracle.com:80
# install yum packages

USER root
#RUN yum  -y install unzip wget openssl
COPY startOra.sh /root
COPY shutOra.sh /root
#ENTRYPOINT ["/root/startOra.sh"]
#CMD "tail -f /dev/null"

USER oracle
RUN bash /home/oracle/setup/setupDB.sh
RUN bash /home/oracle/setup/startupDB.sh

USER root
RUN echo "oracle 1221 is installed"
