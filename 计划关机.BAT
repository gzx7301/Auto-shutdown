echo off

cls
title 自动关机
:star
// enter time hour
cls
echo -----------------
echo     定时关机
echo  按0或直接回车 退出程序
echo  当前输入 小时
echo  最大支持24小时
echo  可输入数字来指定对应时间后关机
echo  输入完请按回车确定
echo  ==不支持小数点==
echo -----------------
echo 注意!不要重复设置关机时间

echo 现在时间 %date% %time%
set /p h=
if %h%==0 goto exit
// enter time minute 
cls
echo -------------
echo 输入附加分钟
echo 上一步输入小时+此步分钟后关机
echo -------------
echo %date% %time%


set /p min=
cls
set /a s=%h%*60*60+%min%*60
set /a day=%s%/86400
// time second
cls
shutdown -s -t %s%
echo 如果这行上边有英文文本则说明已有计划关机时间 重复设定将保留第一次设定时间
echo -----------------
echo 已设定在%h%小时%min%分钟(%d%天)后关机
echo 取消关机请按C 不取消关机请按0或回车退出
echo 输入完成请按回车确定
echo -----------------
set /p k1=
if %k1%==C shutdown -a
if %k1%==c shutdown -a
if %k1%==0 goto exit


:exit
exit
echo -----------------
echo   关机已取消
echo 重新设定关机请输入R 
echo 退出请输入0或回车
echo 输入完请按回车确定
echo -----------------
set /p k2=
if %k2%==r goto star
if %k2%==R goto star
if %k2%==0 goto exit
