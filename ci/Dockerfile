FROM registry-internal.cn-beijing.aliyuncs.com/jiajiakang/jdk8:1.0.0
# FROM registry-vpc.cn-beijing.aliyuncs.com/jiajiakang/jdk8:1.0.0
RUN mkdir -p /app
WORKDIR /app
ADD IMAGE_NAME/build/libs/app.jar /app/app.jar
ADD startup.sh /app/startup.sh
RUN chmod 777 /app/startup.sh
CMD sh -c /app/startup.sh