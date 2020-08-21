# webhook

## start

`dc up -d` or `dc up build && dc up -d`

```shell
http POST 127.0.0.1/webhook/hooks/simple-one token=42
```

or  
POST

```json
{
  "token": "42"
}
```
