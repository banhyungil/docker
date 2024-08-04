FROM jenkins/jenkins:lts-jdk17
# if we want to install via apt
USER root
# Add Docker's official GPG key:
# https://docs.docker.com/engine/install/debian/

RUN apt-get update
RUN apt-get install -y ca-certificates curl sudo
RUN install -m 0755 -d /etc/apt/keyrings
RUN curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
RUN chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
RUN echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
RUN apt-get update
# install docker
RUN apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# sudo 시 비밀번호 없이 실행하도록
RUN echo 'jenkins ALL=(ALL':'ALL) NOPASSWD':' ALL' >> /etc/sudoers

# drop back to the regular jenkins user - good practice
USER jenkins