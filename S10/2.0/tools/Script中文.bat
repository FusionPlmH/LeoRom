@ECHO off
title Android 9.x.x System Tools
setlocal enabledelayedexpansion 
if (%1)==(0) goto skipme
if (%1) neq () goto skipme  
echo  ================================================================================ >> log.log
echo  ==                        Android 9.x.x System Tools                          == >> log.log
echo  ==                        powerd by Karan Sangaj                              == >> log.log
echo  ==                            汉化 不咸的盐巴                                 == >> log.log
echo  ==                          https://leorom.cc/                                == >> log.log
echo  ================================================================================ >> log.log
echo                          %date% -- %time%^ >> log.log                     >> log.log
Setup 0 2 >> log.log 
:error
:skipme
cd "%~dp0" 
if errorlevel 1 goto erradb
cls
:RESTART
cd "%~dp0"
set menunr=GARBAGE
cls    
echo  ==============================================================================
echo  ==                      Android 9.x.x System Tools                          ==
echo  ==                      powered  by Karan Sangaj                            ==
echo  ==                         汉化 不咸的盐巴                                  ==
echo  ==                        https://leorom.cc/                                ==
echo  ==============================================================================
ECHO.  
ECHO  01 主菜单               
ECHO  02 设置工作目录                        
ECHO  00 退出  
ECHO.
ECHO.       
SET /P menunr=请选择: 
IF %menunr%==01 (goto MENU )
IF %menunr%==02 (goto SETDIR) 
IF %menunr%==00 (goto QUIT) 
 
 
  
:SETDIR 
mkdir output_converted_dat_to_ext4
mkdir output_converted_folder_to_ext4
mkdir place_dat_transfer_list_file_context_here   
mkdir extract_system_img_here 
cd extract_system_img_here
mkdir system
cd "%~dp0"  
PAUSE
GOTO RESTART
:MENU
set menunr=GARBAGE2
:home
cls
echo  ==============================================================================
echo  ==                      Android 9.x.x System Tools                          ==
echo  ==                      powered  by Karan Sangaj                            ==
echo  ==                         汉化 不咸的盐巴                                  ==
echo  ==                        https://leorom.cc/                                ==
echo  ==============================================================================
echo.                                %date% 
echo  ==============================================================================
echo  IMG size: %temp_size%                             
echo  ==============================================================================
echo. 
echo  执行完 01 后便可修改system文件夹内容，期间请不要关闭本窗口，如果不慎关闭，请先执行 10 后再执行02!!  
echo  01 将 "system.new.dat" 转换为 "system.img"并解包.
echo  02 一键将 "system" 文件夹打包为 "system.new.dat". 
echo  03 清除所有（不包括新生成的文件）
ECHO  04 返回主菜单 
echo  10 生成temp_size.txt文件
echo  00 退出
echo.
set /p web=Type option:
if "%web%"=="01" goto dat2dir
if "%web%"=="02" goto dir2dat  
if "%web%"=="03" goto clean 
if "%web%"=="04" goto RESTART 
if "%web%"=="00" goto exit
if "%web%"=="10" goto size
goto home

:size
cls 
@echo off
if exist .\output_converted_dat_to_ext4\system.img (
for %%i in (.\output_converted_dat_to_ext4\system.img) do (
echo %%~zi >> temp_size.txt
set temp_size=%%~zi 
)  
)
cd "%~dp0"
pause
goto home 
 
:dat2dir 
echo.
CLS
echo 解压 DAT file 生成system.img
echo.
tools\sdat2img.py place_dat_transfer_list_file_context_here\system.transfer.list place_dat_transfer_list_file_context_here\system.new.dat output_converted_dat_to_ext4\system.img
echo. 
cd "%~dp0" 
echo 解压成功 开始生成temp_size.txt
pause
@echo off
if exist .\output_converted_dat_to_ext4\system.img (
for %%i in (.\output_converted_dat_to_ext4\system.img) do (
echo %%~zi >> temp_size.txt
set temp_size=%%~zi 
)  
)
echo 生成成功 开始解包sysyem.img
tools\Ext4Extractor output_converted_dat_to_ext4\system.img extract_system_img_here\system -i
del extract_system_img_here\system\.journal
cd "%~dp0"
echo 解包system.img成功,文件位于'extract_system_img_here'文件夹下 
) 
pause
goto home

:ext2dir
CLS
tools\Ext4Extractor output_converted_dat_to_ext4\system.img extract_system_img_here\system -i
del extract_system_img_here\system\.journal
cd "%~dp0"
echo 解包system.img成功
pause
goto home

:dir2img
CLS
tools\make_ext4fs -T 0 -S place_dat_transfer_list_file_context_here\file_contexts -l %temp_size% -a system output_converted_folder_to_ext4\my_new_system.img EXTRACT_system_img_here\system\
del temp_size.txt
cd "%~dp0"
pause
goto home

:img2simg
CLS
tools\img2simg output_converted_folder_to_ext4\my_new_system.img output_converted_folder_to_ext4\system.img
cd "%~dp0"
pause
goto home

:simg2dat
CLS
tools\img2sdat.py output_converted_folder_to_ext4\system.img
cd "%~dp0"
pause
goto home

:dir2dat
CLS
if exist temp_size.txt (
echo 开始转换file_cintexts.bin 为 file_contexts
tools\file_contexts_tool place_dat_transfer_list_file_context_here\file_contexts.bin -o place_dat_transfer_list_file_context_here\file_contexts -e
echo 已经生成file_contexts 开始生成system.new.dat
pause
cd "%~dp0"
tools\make_ext4fs -T 0 -S place_dat_transfer_list_file_context_here\file_contexts -l %temp_size% -a system output_converted_folder_to_ext4\my_new_system.img EXTRACT_system_img_here\system\
del temp_size.txt
cd "%~dp0"
tools\img2simg output_converted_folder_to_ext4\my_new_system.img output_converted_folder_to_ext4\system.img
cd "%~dp0"
tools\img2sdat.py output_converted_folder_to_ext4\system.img
)
cd "%~dp0"
echo 转化成功 请将目录下'system.new.dat' 'system.patch.dat' 'system.transfer.list'替换至原ROM完成修改！
pause
goto home
 
:clean
CLS
echo.
echo Removing old files...
echo.
del log.log
if exist temp_size.txt del temp_size.txt


rmdir /Q /S output_converted_dat_to_ext4
rmdir /Q /S output_converted_ext4_to_dat
rmdir /Q /S output_converted_folder_to_ext4 

rmdir /Q /S place_dat_transfer_list_file_context_here
rmdir /Q /S extract_system_img_here  
echo.
echo Done!...
echo.
cd "%~dp0"
pause
goto home