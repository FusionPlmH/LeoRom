@echo off
echo.-------------------------
echo. new.dat.brת������
echo.    by��������
echo.    2018.02.17
echo.-------------------------
echo.
if exist "out\system.new.dat" echo. ����ɾ�����ļ�...... &echo.&del /Q "out\system.new.dat" 
if not exist "system.new.dat.br" echo. δ�ҵ�ϵͳ�����ļ�,�뿨ˢ���е�system.new.dat.br���Ƶ���ǰĿ¼!&echo.&echo.&pause&exit
echo. ����ת��......&echo.
bin\brotli.exe --decompress --in system.new.dat.br --out out\system.new.dat
echo. ת���ɹ�! &echo.&echo. system.new.dat�ѱ�����"out"�ļ�����!
pause&exit
