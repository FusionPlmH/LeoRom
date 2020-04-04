@echo off
echo.-------------------------
echo. new.dat.br转换工具
echo.    by九面相柳
echo.    2018.02.17
echo.-------------------------
echo.
if exist "out\system.new.dat" echo. 正在删除旧文件...... &echo.&del /Q "out\system.new.dat" 
if not exist "system.new.dat.br" echo. 未找到系统镜像文件,请卡刷包中的system.new.dat.br复制到当前目录!&echo.&echo.&pause&exit
echo. 正在转换......&echo.
bin\brotli.exe --decompress --in system.new.dat.br --out out\system.new.dat
echo. 转换成功! &echo.&echo. system.new.dat已保存在"out"文件夹下!
pause&exit
