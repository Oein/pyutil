@echo off
mkdir D:\backup
echo ����� ������ D:\backup�� ��ġ�մϴ�.
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
echo C:\Users\user\Downloads\py.ipynb ��(��) �������� �ʽ��ϴ�.
echo ����ϴ� ������ ������ ������� �ٿ�ε� �����ȿ� ���� �̸��� py�� ������ �ּ���.
echo �̸��� py�� �ߴµ��� ������� py.ipynb�� �̸��� ������ �ּ��� 
pause
exit