# 上游同步指南

> 本文档说明如何将上游 `nexu-io/open-design` 的功能更新合并到你的 fork，同时保留 `custom` 分支上的自定义修改。

## 分支约定

| 分支 | 用途 | 规则 |
|------|------|------|
| `main` | 上游镜像 | **禁止**直接提交，只从 upstream 同步 |
| `custom` | 自定义修改 | 所有你的改动都在这里 |

## Remote 配置

```
origin    → https://github.com/458STAR/open-design.git   (你的 fork)
upstream  → https://github.com/nexu-io/open-design.git   (上游原仓库)
```

如果 `upstream` 丢失（比如重新克隆后），重新添加：

```bash
git remote add upstream https://github.com/nexu-io/open-design.git
```

---

## 同步操作（每次上游有更新时执行）

### 第 1 步：同步 main 分支

```bash
# 切到 main
git checkout main

# 拉取上游最新代码
git fetch upstream

# 快进合并（不会产生额外的 merge commit）
git merge upstream/main --ff-only

# 推送到你的 fork
git push origin main
```

> 如果 `--ff-only` 失败，说明你的 main 上有不该有的提交。用 `git reset --hard upstream/main` 强制对齐，然后 `git push origin main --force-with-lease`。

### 第 2 步：将更新合入 custom 分支

```bash
# 切到 custom
git checkout custom

# 变基到最新的 main（把你的修改"挪"到上游最新代码之上）
git rebase main
```

### 第 3 步：处理冲突（如果有）

rebase 过程中如果出现冲突：

```bash
# 1. 编辑冲突文件，在 <<<<<<< 和 >>>>>>> 之间选择保留的内容
# 2. 标记冲突已解决
git add <冲突文件>

# 3. 继续 rebase
git rebase --continue
```

如果冲突太复杂想放弃：

```bash
git rebase --abort   # 回到 rebase 前的状态
```

### 第 4 步：推送 custom 分支

```bash
# rebase 会改写历史，需要 force push
git push origin custom --force-with-lease
```

---

## 完整一键脚本

把下面的内容保存为项目根目录的 `sync.sh`，以后执行 `bash sync.sh` 即可：

```bash
#!/bin/bash
set -e

echo "📥 正在拉取上游更新..."
git fetch upstream

echo "🔄 同步 main 分支..."
git checkout main
git merge upstream/main --ff-only
git push origin main

echo "♻️  变基 custom 分支..."
git checkout custom
git rebase main

echo "📤 推送 custom 分支..."
git push origin custom --force-with-lease

echo "✅ 同步完成！"
```

---

## 常见问题

### Q: rebase 冲突频繁怎么办？

把自定义修改集中在少数文件或独立目录中，避免大范围修改上游频繁变动的文件。

### Q: 可以用 merge 代替 rebase 吗？

可以，把第 2 步改为 `git merge main`。好处是不改写历史、不需要 force push；坏处是历史线会变得复杂，且每次同步都多一个 merge commit。

### Q: 如何查看上游有哪些新提交？

```bash
git fetch upstream
git log main..upstream/main --oneline
```

### Q: 如何查看我的 custom 分支比 main 多了哪些修改？

```bash
git log main..custom --oneline
```
