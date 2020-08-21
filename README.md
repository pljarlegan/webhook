# Webhook

## Start

```shell
docker-compose up build && docker-compose up -d
```

```shell
# httpie
http POST 127.0.0.1/webhook/hooks/simple-one token=42
```

or  
POST

```json
{
  "token": "42"
}
```

## Documentation

- [Github](https://github.com/adnanh/webhook)
- [Parameters](https://github.com/adnanh/webhook/blob/master/docs/Webhook-Parameters.md)
- [Hook-Rules](https://github.com/adnanh/webhook/blob/master/docs/Hook-Rules.md)
- [Samples](https://github.com/adnanh/webhook/blob/master/docs/Hook-Examples.md)
