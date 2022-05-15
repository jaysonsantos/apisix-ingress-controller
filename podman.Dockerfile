FROM gcr.io/distroless/base-debian11
ARG TARGETARCH
WORKDIR /ingress-apisix
COPY ./apisix-ingress-controller.${TARGETARCH} ./apisix-ingress-controller
ENTRYPOINT ["/ingress-apisix/apisix-ingress-controller", "ingress", "--config-path", "/ingress-apisix/conf/config.yaml"]