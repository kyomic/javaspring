# 使用 OpenJDK 作为基础镜像
FROM openjdk:17-jdk-slim

# 设置工作目录
WORKDIR /app

# 复制构建好的 JAR 文件到镜像中
COPY build/libs/demo-0.0.1-SNAPSHOT.jar app.jar

# 暴露端口
EXPOSE 8083

# 运行应用
CMD ["java", "-jar", "app.jar"]
