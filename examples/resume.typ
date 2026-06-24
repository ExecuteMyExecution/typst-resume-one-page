#import "../resume-template.typ": *

#let (resume-header, resume-entry) = setup-styles(
  font-size: 11pt,
  element-spaciness: 1.0,
)

#show: resume-header.with(
  author: "姚宗宇",
  profile-image: "/assets/drluoji-avatar.png",
  basic-info: ([_男 · 25岁 · 本科_],),
  telephone: "15507870724",
  email: "yao_zongyu@163.com",
  other-link: "https://nocturne-tome.cn/",
  location: "北京",
)

= 教育经历

#resume-entry(
  title: "北京化工大学",
  subtitle: "计算机科学与技术,本科",
  date: "2019.09 – 2024.06",
)[
  - #emph[GPA: 3.51/4.33] 专业前10%；人民奖学金；优秀毕业生
]

= 核心技能

- *云平台与容器编排*：AWS（ELB/RDS/Lambda/DocumentDB/S3）、阿里云、Kubernetes、Karpenter、cronhpa-controller
- *监控与可观测性*：Prometheus、Grafana、SLA/告警体系设计
- *自动化与工程化*：CI/CD流水线建设、Shell/Python自动化脚本、存储架构改造（AFS/HBase → S3）
- *编程语言*：Python、Java、PHP（具备阅读与开发能力，云基础设施方向以Python/Shell为主）
- *辅助能力*：前端开发（React、Vue、Three.js），可支撑基础设施配套工具与可视化平台开发

= 工作经历

#resume-entry(
  title: "云基础设施工程师 / SRE",
  subtitle: "百度 · IDG 海外技术部",
  date: "2025.06 – 至今",
)[
  - 负责海外自动驾驶地图产线基础设施建设，覆盖中东、欧洲2个区域及AWS、阿里云多云环境，服务稳定性99%+，0重大故障。
  - 主导云资源成本治理专项，通过弹性伸缩、Ingress收敛、定时启停等手段实现固定成本降低1000+\$/天（详见项目经历）。
  - 搭建Prometheus+Grafana全链路监控告警体系，完成30+服务CNAP迁移及多环境CI/CD流水线建设。
]

#resume-entry(
  title: "后端开发工程师",
  subtitle: "百度 · 地图定位技术组",
  date: "2024.12 – 2025.06",
)[
  - 负责资料服务存储改造（AFS/Table → S3）及国际化部署，推进多模块在AWS环境的部署联调，打通OTA发布流程。
  - 从零设计开发高精地图回归验证工具链，建设基准测试集，实现回归验证全流程自动化，支撑算法数据闭环。
]

#resume-entry(
  title: "前端开发工程师",
  subtitle: "百度 · 智驾技术组",
  date: "2024.05 – 2024.12",
)[
  - 独立承接智驾数据可视化平台（DV平台）需求开发与重构，交付周期由10个工作日压缩至7个工作日，平台用户满意度由76分提升至80+。
]

= 项目经历

#resume-entry(
  title: "云资源成本优化项目",
  subtitle: "百度 · IDG海外技术部 · 项目负责人",
  date: "2025.08 – 2026.03",
)[
  - 背景：产线前期为快速上线未做精细化资源管理，ELB、数据库、计算实例等成本偏高。
  - 收敛Ingress入口（41个→8个），减少ELB资源占用，成本降低80%+。
  - 设计AWS Lambda+Schedule方案，实现RDS/DocumentDB/Redis非工作时段定时启停。
  - 落地cronhpa-controller+Karpenter弹性扩缩容，vCPU从425降至162（减少60%）。
  - 将EFS目录打包至基础镜像并配置S3存储过期策略，压缩存储成本。
  - 结果：综合固定成本降低1000+\$/天，数据库及常驻服务成本各节省约1/3。
]

#resume-entry(
  title: "高精地图国际化迁移项目",
  subtitle: "百度 · IDG海外技术部 · 基础设施开发",
  date: "2025.04 – 至今",
)[
  - 背景：支持自动驾驶地图业务海外扩张，需在AWS中东/欧洲及阿里云环境复刻国内地图生产产线。
  - 设计资料服务存储改造方案（AFS/Table→S3），完成rowKey→s3Key转换及MySQL元信息接入。
  - 负责后处理、外参服务、解算平台等多模块部署联调，完成镜像依赖替换及HTTPS零信任域名适配。
  - 推动统一代码库支撑多云多地域部署，彻底消除对AWS的强依赖。
  - 结果：中东区域高精地图全流程打通并OTA上线；欧洲合规产线交付50KM高精地图，链路稳定性99%+。
]

= 个人优势

- 具备从0到1交付海外产线的完整经验，能独立完成需求分析、方案设计、部署联调到稳定性保障的全流程闭环。
- 成本意识强，擅长系统性识别资源浪费并推动量化降本，具备发现问题→验证方案→落地→衡量效果的完整思路。
- 具备复杂陌生环境下独立排障与多模块联调能力，能快速定位跨服务、跨环境的阻塞性问题。
