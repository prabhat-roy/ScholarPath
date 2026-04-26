# Redis key patterns - ScholarPath

| Pattern | TTL | Service |
|---|---|---|
| `session:{session_id}` | 24h | auth-service |
| `mfa:{user_id}:totp:{ts}` | 30s | mfa-service |
| `classroom:{room_id}:state` | live | virtual-classroom |
| `classroom:{room_id}:participants` | live | virtual-classroom |
| `lti:nonce:{nonce}` | 15m | lti-tool-provider |
| `coppa:consent:{student_token}` | 30d | coppa-consent |
| `rate:{ip}:{path}` | 60s | api-gateway |
| `cache:course:{id}` | 10m | course-service |
| `leaderboard:course:{id}` | rolling | progress-tracking |
| `cache:catalog:{key}` | 10m | various |
