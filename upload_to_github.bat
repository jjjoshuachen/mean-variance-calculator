@echo off
echo ========================================
echo GitHub 上传脚本
echo ========================================
echo.

cd /d "%~dp0"

set GH="C:\Program Files\GitHub CLI\gh.exe"

echo 第 1 步: 检查 GitHub CLI 登录状态...
%GH% auth status
if errorlevel 1 (
    echo.
    echo 你还没有登录 GitHub CLI
    echo 现在开始登录流程...
    echo.
    %GH% auth login
)

echo.
echo 第 2 步: 创建 GitHub 仓库并推送代码...
echo.
%GH% repo create mean-variance-calculator --public --source=. --remote=origin --push

if errorlevel 1 (
    echo.
    echo 创建仓库时出错！
    echo 可能的原因：
    echo 1. 仓库名称已存在
    echo 2. 网络连接问题
    echo 3. 权限问题
    echo.
    echo 你可以尝试手动创建仓库，然后使用以下命令推送：
    echo git remote add origin https://github.com/你的用户名/mean-variance-calculator.git
    echo git branch -M main
    echo git push -u origin main
    pause
    exit /b 1
)

echo.
echo ========================================
echo 成功！
echo ========================================
echo.
echo 你的仓库已创建并上传到 GitHub
echo.

%GH% repo view --web

echo.
pause
