

## SRE 구조

```bash

1\_sre/
│
├── observability/
│   ├── metrics/
│   ├── dashboards/
│   ├── alerts/
│   └── slo-sli/
│
├── k6-validation/
│   ├── baseline-test.js
│   ├── stress-test.js
│   └── spike-test.js
│
├── runbooks/
│   ├── api-latency.md
│   ├── pod-crash.md
│   ├── db-slow.md
│   └── memory-leak.md
│
├── incident-analysis/
│   ├── postmortem-template.md
│   ├── sample-incident.md
│   └── root-cause-analysis.md
│
└── automation/
&nbsp;   ├── alert-rules.yaml
&nbsp;   ├── grafana-provisioning.yaml
&nbsp;   └── log-query-scripts

```

문제 탐지 → 분석 → 재현 → 대응 흐름

---

## 1. Observability (관측 시스템)

* 시스템 상태를 실시간으로 판단

| 핵심 역할                                         | 주요 기술 / 산출물                              |
| --------------------------------------------- | ---------------------------------------- |
| Metrics 수집 (CPU, Memory, Latency, Error Rate) | Prometheus                               |
| Dashboard 시각화                                 | Grafana                                  |
| 이상 상태 알림 (Alerts)                             | Loki                                     |
| SLO / SLI 정의                                  | latency dashboard / error rate dashboard |

---

## 2. k6 Validation (트래픽 검증)

* 실제 트래픽 기반 성능 및 한계 검증

| 핵심 역할                   | 주요 기술 / 산출물        |
| ----------------------- | ------------------ |
| Baseline (정상 기준 설정)     | k6                 |
| Stress test (한계 부하 검증)  | k6 test scenario   |
| Spike test (급격한 트래픽 대응) | 성능 기준 / scaling 기준 |

---

## 3. Runbooks (표준 대응 매뉴얼)

* 장애 대응 방식의 표준화

| 핵심 역할                            | 주요 기술 / 산출물               |
| -------------------------------- | ------------------------- |
| API / Pod / DB / Memory 장애 대응 절차 | runbook.md                |
| 상황별 대응 가이드 제공                    | api-latency.md            |
| 운영 경험 문서화                        | db-slow.md / pod-crash.md |

---

## 4. Incident Analysis (사후 분석)

* 장애 원인 분석 및 재발 방지

| 핵심 역할                     | 주요 기술 / 산출물         |
| ------------------------- | ------------------- |
| Postmortem 작성             | postmortem template |
| 장애 사례 기록                  | incident report     |
| Root Cause Analysis (RCA) | RCA 문서              |

---

## 5. Automation (SRE 자동화)

* 운영 작업의 자동화 및 코드화

| 핵심 역할           | 주요 기술 / 산출물            |
| --------------- | ---------------------- |
| Alert rule 자동화  | Prometheus alert rules |
| Dashboard 자동 생성 | Grafana provisioning   |
| 로그 조회 자동화       | log scripts / tooling  |

---
