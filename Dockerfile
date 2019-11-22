FROM openjdk:13.0.1-jdk

ENV APKTOOL_VERSION 2.4.0

WORKDIR /usr/local/bin

RUN curl -sLO https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool && chmod +x apktool
RUN curl -SL -o apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_${APKTOOL_VERSION}.jar && chmod +x apktool.jar

VOLUME ["/apk"]

WORKDIR /apk

ENTRYPOINT ["apktool"]
