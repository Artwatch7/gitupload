@echo off
chcp 65001 >nul
echo 🚀 开始上传项目到 Git 仓库...
echo.

cd /d "E:\AI课\AI编程\gittool"
if %errorlevel% neq 0 (
    echo ❌ 错误：无法找到项目文件夹 "E:\AI课\AI编程\gittool"
    pause
    exit /b 1
)

echo 📁 当前目录：%cd%
echo.

echo 🔧 初始化 Git 仓库...
git init
if %errorlevel% neq 0 (
    echo ❌ Git 初始化失败，请检查是否已安装 Git
    pause
    exit /b 1
)

echo 📦 添加所有文件...
git add .

echo 💾 提交文件...
git commit -m "Initial commit"
if %errorlevel% neq 0 (
    echo ❌ 提交失败，请检查 Git 配置
    pause
    exit /b 1
)

echo 🌿 设置分支名称...
git branch -M main

echo 🔗 添加远程仓库...
git remote add origin https://github.com/Artwatch7/gitupload.git

echo 🚀 推送到远程仓库...
git push -u origin main
if %errorlevel% neq 0 (
    echo ❌ 推送失败，请检查仓库地址和网络连接
    pause
    exit /b 1
)

echo.
echo ✅ 上传成功！项目已推送到：https://github.com/Artwatch7/gitupload.git
echo 🌐 可以在浏览器中查看您的仓库
pause