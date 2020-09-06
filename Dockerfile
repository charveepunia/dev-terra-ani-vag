FROM golang

ARG APP=/opt
ARG APP_HOME=/opt/deployment
ARG PROJECT_NAME=get_host
ENV APP=${APP} \
    APP_HOME=${APP_HOME} \
    PROJECT_NAME=${PROJECT_NAME} \
    PROJECT_HOME=${APP_HOME}/${PROJECT_NAME}
    
COPY test.go ${PROJECT_HOME}/
COPY start_server.sh ${PROJECT_HOME}/
ENTRYPOINT ["/opt/deployment/get_host/start_server.sh"] 
