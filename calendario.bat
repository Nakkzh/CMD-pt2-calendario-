@echo off
set ano=%1
set mes=%2

echo Ano: %ano%
echo Mes: %mes%

mkdir %ano%
cd %ano%

mkdir %mes%
cd %mes%

set anoBissexto=False
set /A resto4=%ano% %% 4
set /A resto100=%ano% %% 100
set /A resto400=%ano% %% 400

if %resto4%==0 (
    if %resto100%==0 (
        if %resto400%==0 (
            set anoBissexto=True
        )
    ) else (
        set anoBissexto=True
    )
)

if %mes%==1 set dias=31
if %mes%==2 (
    set dias=28
    if "%anoBissexto%"=="True" set dias=29
)
if %mes%==3 set dias=31
if %mes%==4 set dias=30
if %mes%==5 set dias=31
if %mes%==6 set dias=30
if %mes%==7 set dias=31
if %mes%==8 set dias=31
if %mes%==9 set dias=30
if %mes%==10 set dias=31
if %mes%==11 set dias=30
if %mes%==12 set dias=31

echo Ano Bissexto: %anoBissexto%

:: Cria pastas de 1 até o número de dias do mês
for /L %%D in (1,1,%dias%) do (
    mkdir %%D
)
