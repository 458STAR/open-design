#!/bin/bash
set -e

echo "📥 正在拉取上游更新..."
git fetch upstream

# 检查是否有新提交
NEW_COMMITS=$(git rev-list main..upstream/main --count)
if [ "$NEW_COMMITS" -eq 0 ]; then
  echo "✅ 上游没有新更新，已是最新。"
  exit 0
fi
echo "   发现 $NEW_COMMITS 个新提交"

echo "🔄 同步 main 分支..."
git checkout main
git merge upstream/main --ff-only
git push origin main

echo "♻️  变基 custom 分支..."
git checkout custom
if git rebase main; then
  echo "📤 推送 custom 分支..."
  git push origin custom --force-with-lease
  echo "✅ 同步完成！"
else
  echo ""
  echo "⚠️  rebase 出现冲突，请手动解决："
  echo "   1. 编辑冲突文件"
  echo "   2. git add <冲突文件>"
  echo "   3. git rebase --continue"
  echo "   4. git push origin custom --force-with-lease"
  echo ""
  echo "   放弃本次同步: git rebase --abort"
  exit 1
fi
