@ECHO off
title Android 9.x.x System Tools
setlocal enabledelayedexpansion 
if (%1)==(0) goto skipme
if (%1) neq () goto skipme  
echo  ================================================================================ >> log.log
echo  ==                        Android 9.x.x System Tools                          == >> log.log
echo  ==                        powerd by Karan Sangaj                              == >> log.log
echo  ==                            ���� ���̵��ΰ�                                 == >> log.log
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
echo  ==                         ���� ���̵��ΰ�                                  ==
echo  ==                        https://leorom.cc/                                ==
echo  ==============================================================================
ECHO.  
ECHO  01 ���˵�               
ECHO  02 ���ù���Ŀ¼                        
ECHO  00 �˳�  
ECHO.
ECHO.       
SET /P menunr=��ѡ��: 
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
echo  ==                         ���� ���̵��ΰ�                                  ==
echo  ==                        https://leorom.cc/                                ==
echo  ==============================================================================
echo.                                %date% 
echo  ==============================================================================
echo  IMG size: %temp_size%                             
echo  ==============================================================================
echo. 
echo  ִ���� 01 �����޸�system�ļ������ݣ��ڼ��벻Ҫ�رձ����ڣ���������رգ�����ִ�� 10 ����ִ��02!!  
echo  01 �� "system.new.dat" ת��Ϊ "system.img"�����.
echo  02 һ���� "system" �ļ��д��Ϊ "system.new.dat". 
echo  03 ������У������������ɵ��ļ���
ECHO  04 �������˵� 
echo  10 ����temp_size.txt�ļ�
echo  00 �˳�
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
echo ��ѹ DAT file ����system.img
echo.
tools\sdat2img.py place_dat_transfer_list_file_context_here\system.transfer.list place_dat_transfer_list_file_context_here\system.new.dat output_converted_dat_to_ext4\system.img
echo. 
cd "%~dp0" 
echo ��ѹ�ɹ� ��ʼ����temp_size.txt
pause
@echo off
if exist .\output_converted_dat_to_ext4\system.img (
for %%i in (.\output_converted_dat_to_ext4\system.img) do (
echo %%~zi >> temp_size.txt
set temp_size=%%~zi 
)  
)
echo ���ɳɹ� ��ʼ���sysyem.img
tools\Ext4Extractor output_converted_dat_to_ext4\system.img extract_system_img_here\system -i
del extract_system_img_here\system\.journal
cd "%~dp0"
echo ���system.img�ɹ�,�ļ�λ��'extract_system_img_here'�ļ����� 
) 
pause
goto home

:ext2dir
CLS
tools\Ext4Extractor output_converted_dat_to_ext4\system.img extract_system_img_here\system -i
del extract_system_img_here\system\.journal
cd "%~dp0"
echo ���system.img�ɹ�
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
echo ��ʼת��file_cintexts.bin Ϊ file_contexts
tools\file_contexts_tool place_dat_transfer_list_file_context_here\file_contexts.bin -o place_dat_transfer_list_file_context_here\file_contexts -e
echo �Ѿ�����file_contexts ��ʼ����system.new.dat
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
echo ת���ɹ� �뽫Ŀ¼��'system.new.dat' 'system.patch.dat' 'system.transfer.list'�滻��ԭROM����޸ģ�
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