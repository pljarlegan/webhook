FROM almir/webhook

CMD ["-verbose", "-hooks=/etc/webhook/hooks.json", "-hotreload"]