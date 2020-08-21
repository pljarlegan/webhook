FROM almir/webhook

RUN apk add curl jq
CMD ["-verbose", "-hooks=/etc/webhook/hooks.json", "-hotreload"]