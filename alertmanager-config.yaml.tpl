global:
  smtp_smarthost: 'email-smtp.us-east-1.amazonaws.com:587'
  smtp_from: '${email}'
  smtp_auth_username: '${smtp_auth_username}'
  smtp_auth_password: '${smtp_auth_password}'
  smtp_require_tls: true

route:
  receiver: 'email-alert'
  group_wait: 30s
  group_interval: 5m
  repeat_interval: 1h

receivers:
  - name: 'email-alert'
    email_configs:
      - to: '${email}'
        send_resolved: true