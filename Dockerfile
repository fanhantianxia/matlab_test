FROM xin0214/matlab:latest
MAINTAINER Yu Fan <747336771@qq.com>

RUN apt-get -y install git
RUN mkdir -p /script

RUN cd /script && git clone https://github.com/fanhantianxia/matlab_test.git
ADD DrawPicture /root/matlab_script/DrawPicture
RUN chmod 777 -R /root/matlab_script/
RUN rm -rf /script

ENTRYPOINT ["/root/matlab_script/DrawPicture"]
