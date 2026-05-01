# 设计体系

每个子文件夹是一个可移植的设计体系，采用 [`DESIGN.md`](../docs/spec.md)
格式。在顶部栏的**设计体系**下拉菜单中选择一个，所有技能都会将其作为系统提示词的一部分读取。

## 包含内容

- **`default/`** — 中性现代。手工编写的 OD 规范入门体系。
- **`warm-editorial/`** — 暖色编辑风。手工编写的衬线体入门体系。
- **69 个品牌体系**，导入自
  [`VoltAgent/awesome-design-md`](https://github.com/VoltAgent/awesome-design-md)
  （[`getdesign@latest`](https://www.npmjs.com/package/getdesign) npm
  包，MIT 许可）。每个品牌一个文件夹：

  | 分类 | 体系 |
  |---|---|
  | AI 与大模型 | claude · cohere · elevenlabs · minimax · mistral-ai · ollama · opencode-ai · replicate · runwayml · together-ai · voltagent · x-ai |
  | 开发者工具 | cursor · expo · lovable · raycast · superhuman · vercel · warp |
  | 效率工具与 SaaS | cal · intercom · linear-app · mintlify · notion · resend · zapier |
  | 后端与数据 | clickhouse · composio · hashicorp · mongodb · posthog · sanity · sentry · supabase |
  | 设计与创意 | airtable · clay · figma · framer · miro · webflow |
  | 金融科技与加密 | binance · coinbase · kraken · mastercard · revolut · stripe · wise |
  | 电商与零售 | airbnb · meta · nike · shopify · starbucks |
  | 媒体与消费 | apple · ibm · nvidia · pinterest · playstation · spacex · spotify · theverge · uber · vodafone · wired |
  | 汽车 | bmw · bugatti · ferrari · lamborghini · renault · tesla |

文件夹使用 ASCII slug 命名——带点的品牌名已规范化（`linear.app` →
`linear-app`，`x.ai` → `x-ai` 等）。

## 文件结构

第一个 H1 标题即为选择器中显示的名称。H1 后紧接的行会解析 `> Category: <名称>` 用于下拉分组：

```markdown
# Cohere

> Category: AI 与大模型
> 企业级 AI 平台。鲜艳渐变，数据密集型仪表盘美学。

## 1. 视觉主题与氛围
...
```

模板前缀 `Design System Inspired by ` 和 `> Category: ...` 行
在运行时会从下拉标签和摘要预览中去除——它们仅作为元数据。

## 添加自定义体系

新建一个包含 `DESIGN.md` 的文件夹，刷新后即可显示。
添加 `> Category: <分组>` 行可将其归入现有分组，或使用新标签自动排在下拉底部。

## 更新内置体系

69 个品牌体系源自上游 npm 包。同步最新版本：

```bash
curl -sL $(npm view getdesign dist.tarball) -o /tmp/getdesign.tgz
tar -xzf /tmp/getdesign.tgz -C /tmp
node --experimental-strip-types scripts/sync-design-systems.ts
```

原始导入脚本位于
[`excessive-climb` 分支](../)顶部——对新 tarball 重新运行即可。

## 版权声明

69 个品牌体系来源于
[`VoltAgent/awesome-design-md`](https://github.com/VoltAgent/awesome-design-md)
（MIT 许可，© VoltAgent 贡献者）。它们是美学*灵感*——
均非其引用品牌的官方资产。
