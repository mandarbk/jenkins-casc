FROM jenkins/jenkins:latest
COPY jenkins-setup-casc.yaml /var/jenkins_home/casc.yaml
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml
ENV JENKINS_ADMIN_ID admin
ENV JENKINS_ADMIN_PASSWORD nimda
COPY jenkins-plugin-manager.jar /usr/share/jenkins/ref/jenkins-plugin-manager.jar
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
WORKDIR /usr/share/jenkins/ref
RUN java -jar jenkins-plugin-manager.jar -f /usr/share/jenkins/ref/plugins.txt --verbose








 
