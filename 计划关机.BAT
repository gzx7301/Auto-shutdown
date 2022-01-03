echo off
color 3e
chcp 936
title 自动关机
cls

echo -----------------
echo     定时关机
echo  输入c并回车退出程序
echo  直接回车将引发问题(无害)
echo  如已有设置将覆盖先前设置
echo  可输入数字来指定对应时间后关机
echo  输入完请按回车确定
echo  ==不支持小数点==
echo -----------------
echo  设定  小时《——
echo  设定  分钟
echo  现在时间 %date% %time%
echo -----------------

set /p h=
if %h%==C shutdown -a
if %h%==c shutdown -a
cls
echo -----------------
echo     定时关机
echo  按0或直接回车 退出程序
echo  直接回车将引发问题(无害)
echo  如已有设置将覆盖先前设置
echo  可输入数字来指定对应时间后关机
echo  输入完请按回车确定
echo  ==不支持小数点==
echo -----------------
echo  设定%h%小时
echo  设定  分钟《——
echo 现在时间%date% %time%
echo -----------------

set /p min=
if %min%==C shutdown -a
if %min%==c shutdown -a
cls
set /a s=%h%*60*60+%min%*60
echo %s% %a% %min% 
pause
shutdown -s -t %s%

echo -----------------
echo 已设定在%h%小时%min%分钟后关机
echo 重复设定将覆盖先前设置
echo 取消关机请输入C 退出请输入0或回车
echo 输入完成请按回车确定
echo -----------------
set /p k1=
if %k1%==C shutdown -a
if %k1%==c shutdown -a
cls
exit
:exit
exit
//2021年12月19日20点23分
//https://github.com/gzx7301/Auto-shutdown
//v1.41
