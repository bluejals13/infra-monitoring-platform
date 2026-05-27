

## MSP 구조

```bash
2_msp/
│
├── tenant-management/
│   ├── tenant-structure.md
│   ├── isolation-model.md
│   ├── access-control.md
│   └── resource-mapping.md
│
├── ticket-flow/
│   ├── incident-lifecycle.md
│   ├── ticket-template.md
│   ├── priority-matrix.md
│   └── workflow-diagram.md
│
├── sla/
│   ├── sla-definition.md
│   ├── error-budget.md
│   ├── availability-targets.md
│   └── reporting-format.md
│
└── escalation/
    ├── l1-l2-l3-structure.md
    ├── oncall-policy.md
    ├── escalation-rule.md
    └── communication-guide.md
```

문제 탐지 → 분석 → 재현 → 대응 흐름









\## 1. tenant-management (고객 분리 구조)



* 여러 고객 환경을 안전하게 분리하고 독립적으로 운영


| 핵심 역할                             | 주요 기술 / 구조                                       |
| --------------------------------- | ------------------------------------------------ |
| tenant 구조 설계 (A/B/C 고객 분리)        | Kubernetes namespace / multi-tenant architecture |
| isolation model (네트워크/데이터/리소스 분리) | network policy / resource quota                  |
| access control (권한 관리)            | RBAC                                             |
| resource mapping (고객별 인프라 연결)     | tenant-aware deployment                          |

```bash
customer-a/
 ├─ namespace
 ├─ app
 ├─ monitoring
customer-b/
customer-c/
```


\## 2. ticket-flow (운영 프로세스)



* 모든 장애를 표준화된 프로세스로 처리

| 핵심 역할                 | 주요 기술 / 구조                 |
| --------------------- | -------------------------- |
| incident lifecycle 관리 | Jira / ServiceNow workflow |
| ticket template 표준화   | incident ticket schema     |
| priority 분류 (P1~P4)   | severity matrix            |
| workflow 정의           | alert → ticket → resolve   |





\## 3. SLA (서비스 기준 정의)



* 서비스 품질을 수치 기반으로 관리

| 핵심 역할           | 주요 기준                               |
| --------------- | ----------------------------------- |
| SLA 정의          | availability / latency / error rate |
| error budget 관리 | 허용 실패 범위 설정                         |
| uptime 기준 관리    | SLO 기반 운영                           |
| 고객 리포팅          | SLA 보고 체계                           |






\## 4. Escalation (장애 대응 단계)



* 장애 대응 책임과 단계 명확화

| 단계            | 역할               |
| ------------- | ---------------- |
| L1            | runbook 기반 1차 대응 |
| L2            | 시스템 분석 및 원인 파악   |
| L3            | 코드/인프라 수정        |
| On-call       | 24/7 장애 대응       |
| Communication | 내부/고객 공지         |




