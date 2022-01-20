echo off
color 3e
chcp 936
title 自动关机
:start1
cls
echo           输入对应数字快速设定关机
echo      1 1小时后关机    2 1小时30分钟后关机
echo      3 2小时后关机    4 2小时30分钟后关机
echo      5 3小时后关机    6 3小时30分钟后关机
echo      7 4小时后关机    8 4小时30分钟后关机
echo      9 取消关机       0 自定义时间
set /p menu=
if %menu%==1 shutdown -s -t 3600
if %menu%==2 shutdown -s -t 5400
if %menu%==3 shutdown -s -t 7200
if %menu%==4 shutdown -s -t 9000
if %menu%==5 shutdown -s -t 10800
if %menu%==6 shutdown -s -t 12600
if %menu%==7 shutdown -s -t 14400
if %menu%==8 shutdown -s -t 16200
if %menu%==9 shutdown -a
if %menu%==0 goto start
pause
goto start1


:start
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
echo  直接回车将引发问题(无害)
echo  如已有设置将覆盖先前设置
echo  可输入数字来指定对应时间后关机
echo  输入完请按回车确定
echo  ==不支持小数点==
echo      按0跳过
echo -----------------
echo  设定%h%小时
echo  设定  分钟《——
echo 现在时间%date% %time%
echo -----------------

set /p min=
if %min%==/n exit
if %min%==C shutdown -a
if %min%==c shutdown -a

set /a s=%h%*60*60+%min%*60
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
//v1.42
