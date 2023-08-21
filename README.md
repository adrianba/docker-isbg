# isbg

- run isbg and spamassassin in a container

```yaml
---
# docker-compose.yml
version: "3.0"
volumes:
  track: {}
services:
  isbg:
    image: ghcr.io/adrianba/docker-isbg:latest
    volumes:
      - track:/track
    environment:
      IMAPHOST: mail.example.com
      IMAPUSER: myuser@example.com
      IMAPPASSWD: mypassword
      LEARNHAMBOXES: Sent, Learn
      LEARNSPAMBOXES: Spam
      TRACKFILE: isbg-example
```
