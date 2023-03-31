@echo off
mkdir D:\backup
echo 백업된 파일은 D:\backup에 위치합니다.
if not exist C:\Users\user\Downloads\py.ipynb goto notExsist
:loop
set YYYY=%DATE:~0,4%
set MM=%DATE:~5,2%
set DD=%DATE:~8,2%
set HH=%TIME: =0%
set HH=%HH:~0,2%
set MI=%TIME:~3,2%
set SS=%TIME:~6,2%
set FF=%TIME:~9,2%
mkdir "D:\backup\%YYYY%Y %MM%M %DD%D" > null
mkdir "D:\backup\%YYYY%Y %MM%M %DD%D\%HH%H" > null
mkdir "D:\backup\%YYYY%Y %MM%M %DD%D\%HH%H\%MI%M" > null
set fileName=%SS%.tmp
copy "C:\Users\user\Downloads\py.ipynb" "D:\backup\%YYYY%Y %MM%M %DD%D\%HH%H\%MI%M\%fileName%.ipynb" > null
timeout 1 > null
goto loop
:notExsist
echo C:\Users\user\Downloads\py.ipynb 이(가) 존재하지 않습니다.
echo 사용하던 주피터 파일이 있을경우 다운로드 폴더안에 놓고 이름을 py로 설정해 주세요.
echo 이름이 py로 했는데도 했을경우 py.ipynb로 이름을 변경해 주세요 
pause
exit