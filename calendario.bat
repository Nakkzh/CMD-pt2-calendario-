@echo off
echo %1
echo %2
mkdir %1
cd %1
mkdir %2
cd %2

:: Atribui um valor ao mês (isso deve ser feito de acordo com a lógica ou entrada do usuário)
set month=2

:: Define o número de dias de acordo com o mês
if %month%==1 set days=31
if %month%==2 set days=28
if %month%==3 set days=31
if %month%==4 set days=30
if %month%==5 set days=31
if %month%==6 set days=30
if %month%==7 set days=31
if %month%==8 set days=31
if %month%==9 set days=30
if %month%==10 set days=31
if %month%==11 set days=30
if %month%==12 set days=31

:: Cria pastas de 1 até o número de dias do mês
for /L %%D in (1,1,%days%) do (
    mkdir %%D
)
