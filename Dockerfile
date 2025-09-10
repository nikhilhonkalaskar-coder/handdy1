FROM tomcat:9.0-jdk17

# Download PostgreSQL JDBC driver
ADD https://jdbc.postgresql.org/download/postgresql-42.7.3.jar /usr/local/tomcat/lib/

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file
COPY Handdy.war /usr/local/tomcat/webapps/ROOT.war

# Environment variables for Supabase JDBC
ENV DB_URL="jdbc:postgresql://aws-1-ap-south-1.pooler.supabase.com:6543/postgres"
ENV DB_USER="postgres.izelhicxpkvxibgccemv"
ENV DB_PASSWORD="hsN94Z1thZ09vJQd"

EXPOSE 8080
CMD ["catalina.sh", "run"]
