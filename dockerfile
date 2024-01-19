FROM centos:7
LABEL author=shubham
ADD  https://raw.githubusercontent.com/creationix/nvm/master/install.sh |
RUN source ~/.bashrc   
RUN $NVM_DIR/nvm.sh && nvm install ${18.16.0}
CMD git clone https://github.com/shubhamkalsait/devops-fullstack-app.git
WORKDIR /root/devops-fullstack-/fronted/
RUN npm install
CMD npm start
EXPOSE 3000
