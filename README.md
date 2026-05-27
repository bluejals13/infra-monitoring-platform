각 분리 내용

| 영역                | 목적         | 주요 역할              | 핵심 책임                            | 주요 산출물                                  |
| ----------------- | ---------- | ------------------ | -------------------------------- | --------------------------------------- |
| 🟦 SRE Layer      | 시스템 안정성 확보 | 장애 탐지 / 분석 / 대응    | 서비스 안정성 유지 (Latency, Error Rate) | Observability 대시보드, Runbook, Alert Rule |
| 🟧 MSP Layer      | 운영 프로세스 관리 | 티켓 / SLA / 고객 운영   | 장애 처리 표준화 및 운영 절차화               | Ticket Flow, SLA 정책, Escalation 정책      |
| 🟩 Platform Layer | 인프라 제공     | 클러스터 / CI/CD / IaC | 서비스 실행 환경 제공 및 자동화               | Kubernetes, Terraform, CI/CD pipeline   |

---

## 1. SRE Layer (시스템 안정성)
---
### 1. 목적_____________________________________ * 서비스 장애 원인 탐지 및 복구

### 2. 책임
```bash
Observability: Prometheus / Grafana / Loki 모니터링
Alerting: latency, error rate, resource threshold 감지
RCA: 장애 원인 분석
Validation: k6 트래픽 테스트
Recovery: runbook 기반 대응
```

### 3. 기술_____________________________________ * Prometheus / Grafana / Loki

### 4. 산출물
```bash
latency dashboard
error rate dashboard
runbook.md
k6 test scenario
```
---

## 2. MSP Layer (운영 프로세스)
---
### 1. 목적_____________________________________ * 장애 대응의 표준화 및 신속 처리

### 2. 책임
```bash
Tenant 관리 (고객/서비스 분리)
Ticket flow (Alert → Ticket → 처리)
SLA 관리 (응답/복구 기준)
Escalation (L1 → L2 → L3)
Incident reporting
```

### 3. 시스템_____________________________________ * Jira / ServiceNow

### 4. 산출물
```bash
ticket-flow.md
sla.md
escalation-policy.md
incident-report.md
```
---

## 3. Platform Engineering Layer
---
### 1. 목적_____________________________________ * 서비스 실행을 위한 공통 인프라 제공

### 2. 책임
```bash
Kubernetes 클러스터 운영
CI/CD 파이프라인 구축
Infrastructure provisioning (Terraform)
Configuration management (Ansible)
Shared runtime platform 제공
```

### 3. 기술_____________________________________ * Kubernetes / Terraform / Ansible / GitHub Actions

### 4. 산출물
```bash
cluster.yaml
terraform modules
CI/CD pipeline
deployment guide
```
---
