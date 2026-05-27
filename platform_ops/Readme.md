
```bash
platform-ops/
│
├── 1_sre/
│   ├── observability/
│   ├── k6-validation/
│   ├── runbooks/
│   └── automation/
│
├── 2_msp/
│   ├── tenant-management/
│   ├── ticket-flow/
│   ├── sla/
│   └── escalation/
│
├── 3_platform-engineering/
│   ├── shared-platform/
│   ├── kubernetes/
│   ├── ci-cd/
│   └── infra-provisioning/
│
└── architecture/
    ├── system-overview.md
    ├── full-flow.md
    └── diagrams/
```
---
```bash
Product Teams (서비스 개발)
        ↓
Platform Engineering (배포/런타임)
        ↓
SRE / Reliability Engineering (안정성)
        ↓
Infra / Cloud Team (AWS/GCP/K8s 기반)
        ↓
Ops / MSP (고객 운영)
```
---
- 🟢 SRE = “서비스가 죽지 않게 하는 기본 시스템”
- 🟡 Platform = “개발/배포를 빠르게 만드는 엔진”
- 🔵 MSP = “여러 고객을 운영하는 비즈니스 구조”
---
- SRE 먼저 → Platform → CI/CD → EC2/Lambda → CDN/Edge


