

\## DevOps 구조

```bash

3_platform-engineering/
│
├── shared-platform/
│   ├── base-cluster.md
│   ├── networking.md
│   ├── ingress.md
│   └── storage.md
│
├── kubernetes/
│   ├── cluster-setup.yaml
│   ├── namespace-structure.yaml
│   ├── hpa-config.yaml
│   └── deployment-strategy.md
│
├── ci-cd/
│   ├── github-actions/
│   │    ├── build.yml
│   │    ├── deploy.yml
│   │    └── rollback.yml
│   ├── pipeline-architecture.md
│   └── release-strategy.md
│
└── infra-provisioning/
    ├── terraform/
    │    ├── vpc.tf
    │    ├── eks.tf (or k8s cluster)
    │    ├── ec2.tf
    │    └── modules/
    ├── ansible/
    │    ├── setup.yml
    │    ├── docker-install.yml
    │    └── hardening.yml
    └── provisioning-flow.md

```

---

#### 1. shared-platform (공통 인프라)_____________________________________ * 모든 서비스와 tenant가 공통으로 사용하는 기반 플랫폼

| 핵심 역할                                  | 주요 기술 / 구조                         |
| -------------------------------------- | ---------------------------------- |
| base cluster 구성                        | Kubernetes cluster                 |
| networking 구성 (VPC / subnet / routing) | cloud network (VPC, subnet)        |
| ingress 트래픽 진입 구조                      | ingress controller                 |
| storage 구조 (PV / DB storage)           | persistent volume / storage system |

---

#### 2. Kubernetes (컨테이너 실행 엔진)_____________________________________ * 서비스 실행과 확장(스케일링)을 담당하는 오케스트레이션

| 핵심 역할                            | 주요 기술 / 구조                      |
| -------------------------------- | ------------------------------- |
| cluster setup                    | Kubernetes                      |
| namespace 기반 분리 (tenant/service) | namespace                       |
| 자동 스케일링                          | HPA (Horizontal Pod Autoscaler) |
| 배포 전략 관리                         | rolling / blue-green deployment |

---

#### 3. CI/CD (배포 자동화)_____________________________________ * 코드 변경부터 배포까지 자동화된 릴리즈 파이프라인

| 핵심 역할                   | 주요 기술 / 구조                |
| ----------------------- | ------------------------- |
| build (Docker image 생성) | Docker                    |
| deploy (Kubernetes 배포)  | Kubernetes deployment     |
| rollback (버전 복구)        | release rollback strategy |
| release strategy 관리     | GitHub Actions pipeline   |

```bash
Git push
 → Build (Docker image)
 → Push (GHCR)
 → Deploy (Kubernetes)
 → Monitoring 확인
```

---

#### 4. Infra Provisioning (인프라 자동 생성)_____________________________________ * 서버/네트워크/클러스터를 코드로 자동 생성

| 핵심 역할                           | 주요 기술 / 구조        |
| ------------------------------- | ----------------- |
| infrastructure provisioning     | Terraform         |
| server configuration            | Ansible           |
| reusable infrastructure modules | Terraform modules |
| provisioning workflow 정의        | IaC pipeline      |

---
