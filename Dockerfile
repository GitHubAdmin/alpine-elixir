FROM erlang:20-alpine

ENV ELIXIR_VERSION  1.5.3
ENV ELIXIR_REPO_URL https://github.com/elixir-lang/elixir/releases/download/v${ELIXIR_VERSION}/Precompiled.zip

RUN set -ex;\
    apk --no-cache add wget bash ca-certificates && \
    wget --no-check-certificate ${ELIXIR_REPO_URL} && \
    mkdir -p /opt/elixir-${ELIXIR_VERSION}/ && \
    unzip Precompiled.zip -d /opt/elixir-${ELIXIR_VERSION}/ && \
    rm Precompiled.zip

ENV PATH /opt/elixir-${ELIXIR_VERSION}/bin:$PATH

CMD ["/bin/sh"]