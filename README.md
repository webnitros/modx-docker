### Start project

```console
cp .env.example .env
```

Change version modx [.env](.env) default `MODX_VERSION=2.8.3-pl`

| Variables          | Default               |
|--------------------|-----------------------|
| MODX_VERSION       | 2.8.3-pl              |
| CMS_ADMIN_USERNAME | admin                 |
| CMS_ADMIN_PASSWORD | mysupersecretpassword |

# Gitify

[github документация](https://modmore.github.io/Gitify/ru/)

Change your `packages` install file [.gitify](.gitify)

Default:

- ace-1.9.4-pl
- adminpanel-1.1.0-pl
- moddevtools-1.2.1-pl
- pdotools-2.13.2-pl

```console
make remake
```
