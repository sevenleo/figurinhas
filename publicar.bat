@echo off
:: Obtém a data e hora atual no formato YYYY-MM-DD HH:MM:SS
for /f "tokens=2 delims==." %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set datetxt=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2% %datetime:~8,2%:%datetime:~10,2%:%datetime:~12,2%

git add .
git commit -m "%datetxt%"
git push

echo Commit realizado com a mensagem: "%datetxt%"
pause
