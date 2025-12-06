# Sử dụng môi trường Tomcat 9 và Java 17
FROM tomcat:9.0-jdk17-openjdk-slim

# Xóa các ứng dụng mặc định của Tomcat cho nhẹ
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy file WAR của bạn vào thư mục chạy
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Mở cổng 8080 (Cổng mặc định của Tomcat)
EXPOSE 8080

# Lệnh chạy server
CMD ["catalina.sh", "run"]S

