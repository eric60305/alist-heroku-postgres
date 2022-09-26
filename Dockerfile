## original src but cant use it
# FROM xhofe/alist:v2.6.4

## cant use it now (issue sol)
# FROM xhofe/alist:v2.6.0 

## only read can use it
FROM xhofe/alist:v2.4.3 
LABEL MAINTAINER="i@nn.ci"

ARG DATABASE_URL

WORKDIR /opt/alist/
ENV DB_TYPE postgres
ENV DB_SLL_MODE require
ADD main /main
RUN chmod +x /main
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["sh", "/entrypoint.sh"]
