FROM centos:7
LABEL author=shubham
ADD  https://raw.githubusercontent.com/creationix/nvm/master/install.sh |
RUN source ~/.bashrc
RUN export NVM_DIR="$HOME/.nvm" && \
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR.sh" [-s "$NVM_DIR/bash_completion"] && \. "$NVM_DIR/bash_completion"
# Install Node.js 18.16.0   
RUN nvm install 18.16.0
CMD git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /root/devops-fullstack-/fronted/
RUN npm install
CMD npm start
EXPOSE 3000
