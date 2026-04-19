# infra-monitoring-platform/devops-portfolio/infra-monitoring-platfor
---

## infra-monitoring-platform/

- docker-compose.yml
- README.md

- app/
- - Dockerfile
  - (Spring Boot 프로젝트)

- nginx/
- - nginx.conf

- redis/
- - redis.conf (optional)

- monitoring/
- - prometheus.yml
  - grafana/
  - - dashboards/

- stress-test/
- - stress.sh

- docs/
- - architecture.png
  - troubleshooting.md
  - performance.md

---

이 프로젝트는 Docker 기반 Spring Boot 서비스를 구축하고,
Nginx Reverse Proxy와 Redis 캐싱을 적용하여 성능을 개선하였으며,
Prometheus와 Grafana를 활용해 모니터링 환경을 구성한 인프라 운영 프로젝트입니다.

또한 stress-ng를 활용한 부하 테스트를 통해 장애 상황을 재현하고,
문제 원인 분석 및 개선 과정을 수행했습니다.
