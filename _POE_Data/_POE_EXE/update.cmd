@echo off
SET EXE=%~dp0..\PoeTradeSearch.exe
SET DAT=%~dp0update.dat
SET CMD=%~dp0update.cmd
SET COUNT=0
:Repeat 
del /f /s /q "%EXE%"  >nul 2>&1
cls
SET /a COUNT+=1
echo.
echo. ������Ʈ �����... (%COUNT%)
timeout 1  >nul 2>&1
if exist "%EXE%" goto Repeat
SET COUNT=0
move "%DAT%" "%EXE%"
:Repeat2
SET /a COUNT+=1
echo.
echo. ������Ʈ�� �Ϸ� �ϴ���... (%COUNT%)
timeout 1  >nul 2>&1
if exist "%DAT%" goto Repeat2
del /s /q %~dp0Parser.txt >nul 2>&1
timeout 1  >nul 2>&1
del /s /q %~dp0FiltersKO.txt >nul 2>&1
timeout 1  >nul 2>&1
cls
echo.
echo. ������Ʈ�� ���ƽ��ϴ�.
echo. ���α׷��� �ٽ� �������ּ���.
echo.
echo. ����: ������Ʈ �� ����� ������ �߻��Ѵٸ�...
echo. ������ ������ ���� �� ���α׷��� �ٽ� �������ּ���.
echo. ��, ���� Config.txt ������ �ʿ��ϸ� ����� �μ���.
echo.
echo. �ƹ�Ű�� ������ �� â�� �ݽ��ϴ�.
del /s /q "%CMD%" >nul 2>&1
pause >nul
del /s /q "%CMD%" >nul 2>&1