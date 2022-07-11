FROM gitpod/workspace-full
RUN npm install -g serve
RUN echo "Defaults        pwfeedback" | sudo EDITOR='tee -a' visudo
USER gitpod
RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh \
             && sdk install java 15.0.2.7.1-amzn && sdk install gradle 6.8.3"
