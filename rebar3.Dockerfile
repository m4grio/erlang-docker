FROM erlangdocker_erlang:latest
MAINTAINER Mario Alvarez <ahoy@m4grio.me>

ENV REBAR_VERSION 3.4.2

RUN set -xe ;\
    apk update ;\                                                                                                                                                                                                                        
    apk add ca-certificates wget ;\                                                                                                                                                                                                      
    update-ca-certificates  ;\
    wget https://github.com/erlang/rebar3/releases/download/${REBAR_VERSION}/rebar3 ;\
    install rebar3 /usr/bin/rebar3 ;\
    rm -f rebar3
    
CMD ["rebar3"]
