
echo off
cls
title 自动关机
:star
echo 现在时间 %date% %time%
echo -----------------
echo     定时关机
echo  按0或直接回车 退出程序
echo  最大支持24小时
echo  可输入数字来指定对应小时后关机
echo  输入完请按回车确定
echo -----------------

echo 注意!不要重复设置关机时间

set /p h=
if %h%==0 goto exit
set /a s=%h%*60*60
cls
shutdown -s -t %s%
cls
echo -----------------
echo 已设定在%h%小时(%s%秒)后关机
echo 取消关机请按C 不取消关机请按0或回车
echo 输入完请按回车确定
echo -----------------
set /p k1=
if %k1%==C shutdown -a
if %k1%==c shutdown -a
if %k1%==0 goto exit


:exit
exit
echo -----------------
echo 关机已取消
echo 重新设定关机请输入R 退出请输入0或回车
echo 输入完请按回车确定
echo -----------------
set /p k2=
if %k2%==r goto star
if %k2%==R goto star
if %k2%==0 goto exit
