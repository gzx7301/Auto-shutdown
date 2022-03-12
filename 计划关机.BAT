echo off
chcp 936
title 设定自动关机
:start1
cls
echo      输入对应数字并且按下Enter快速设定关机
echo      1 1小时后关机    2 1小时30分钟后关机
echo      3 2小时后关机    4 2小时30分钟后关机
echo      5 3小时后关机    6 3小时30分钟后关机
echo      7 4小时后关机    8 取消关机
echo      9 自定义时间     0 退出
set /p menu=
if %menu%==1 shutdown -s -t 3600
if %menu%==2 shutdown -s -t 5400
if %menu%==3 shutdown -s -t 7200
if %menu%==4 shutdown -s -t 9000
if %menu%==5 shutdown -s -t 10800
if %menu%==6 shutdown -s -t 12600
if %menu%==7 shutdown -s -t 14400
if %menu%==8 shutdown -a
if %menu%==9 goto start
if %menu%==0 exit
goto start1


:start
cls
echo -----------------
echo     定时关机
echo  输入C并且按下Enter回到菜单
echo  直接回车将引发问题(无害)
echo  如已有设置将覆盖先前设置
echo  可输入数字来指定对应时间后关机
echo  输入完请按Enter确定
echo  ==不支持小数点==
echo  可设置0跳过
echo -----------------
echo  设定  小时《——
echo  设定  分钟
echo  现在时间 %date% %time%
echo -----------------
set /p h=
if %h%==C goto start1
if %h%==c goto start1
cls

echo -----------------
echo     定时关机
echo  输入C并且按下Enter回到菜单
echo  输入R并且按下Enter返回上一步
echo  直接回车将引发问题(无害)
echo  如已有设置将覆盖先前设置
echo  可输入数字来指定对应时间后关机
echo  输入完请按Enter确定
echo  ==不支持小数点==
echo -----------------
echo  设定%h%小时
echo  设定  分钟《——
echo 现在时间%date% %time%
echo -----------------
set /p min=
if %min%==C goto start1
if %min%==c goto start1
if %min%==R goto start
if %min%==r goto start

set /a s=%h%*60*60+%min%*60
shutdown -s -t %s%


:end
cls
echo -----------------
echo 已设定关机(看右下角通知)
echo 重复设定将覆盖先前设置
echo 取消关机请输入C 返回菜单请按Enter
echo 输入完成请按回车确定
echo -----------------
echo dev info s:%s% min:%min% h:%h%
set /p k1=

if %k1%==C shutdown -a
if %k1%==c shutdown -a
goto start1
//2022年3月12日23点06分
//https://github.com/gzx7301/Auto-shutdown
//v1.43 
