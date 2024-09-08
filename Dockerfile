# OpenJDKのバージョン17をベースイメージに利用
FROM openjdk:17
# 環境変数
ARG JAR_FILE=*.jar
ENV MYSQL_HOST=mysql-db
ENV MYSQL_USER=yourusername
ENV MYSQL_PASSWORD=yourpassword
# アプリケーションの jar ファイルをコンテナ内にコピー
COPY ${JAR_FILE} app.jar
# コンテナ起動時にアプリケーションを実行
ENTRYPOINT ["java","-jar","/app.jar"]