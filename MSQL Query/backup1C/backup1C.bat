chcp 1251
echo ************************************************************ 
echo Setup param: 
echo ************************************************************ 
set __1c_path=c:\Program Files (x86)\1cv8\8.3.8.1747\bin\1cv8.exe
set __base_name=LesBrest83
set __base_path=rds:2541/LesBrest83
set __upload_path=c:\Les82
set __username=admin
set __password=admin
echo ******************
echo Create folder:
echo ******************
md "%__upload_path%\%__base_name%" 
echo ************************************************************ 
echo Create backup: 
echo ************************************************************ 

@echo off
set now=%DATE: =0% %TIME: =0%
for /f "tokens=1-7 delims=/-:., " %%a in ( "%now%" ) do (
    set now=%%c%%b%%a_%%d%%e
)
echo %now%

"%__1c_path%" config /Out"%__upload_path%\%__base_name%\%__base_name%.log" /S"%__base_path%" /N"%__username%" /P"%__password%" /DumpIB"%__upload_path%\%__base_name%\%__base_name%-%date%.dt"  