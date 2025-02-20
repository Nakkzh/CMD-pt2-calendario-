# CMD (Calendário)

## Proposta da aula
A proposta da aula era compreender e fazer um calendário funcional no cmd, levando em conta ano, sendo ou não bissexto, mês e dia.

---

### Comandos aprendidos

```bash
FOR: repetição para iterar sobre listas, arquivos ou sequências numéricas.
IF: Estrutura condicional para comparar números ou verificar arquivos.
ELSE IF (junto com IF): Permite testar múltiplas condições.
```

---

# PROGRAMANDO!!!

A minha proposta de programação era fazer algo diferente dos outros, enquanto todos estavam fazendo como o professor ensinou criando variaveis, eu queria fazer usando o *FALSE* e *TRUE* para me desafiar, eu sabia o que esses comando faziam por conta de um pequeno curso que ja havia feito sobre logica de programação.

```bash

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

for /L %%D in (1,1,%dias%) do (
    mkdir %%D
)
```

## DESAFIOS

O maior desafio enquanto eu programava era fazer com que o que aprendi na aula funcionasse juntamente com os comandos de *FALSE* e *TRUE*, tive que fazer muitas tentativas até que finalmente conseguisse algum resultado significante, quando finalmente consegui fazer um script que funciona foi satisfatorio.

## Explicando a programação

O meu codigo cria pastas representando um calendário, verificando se o ano informado é bissexto e ajustando fevereiro para 28 ou 29 dias.

Passo a passo resumido:
- Recebe o ano e o mês como argumentos.
- Cria pastas para o ano e o mês.
- Calcula se o ano é bissexto, ajustando fevereiro para 29 dias se necessário.
- Cria pastas numeradas de 1 até o número de dias do mês.
- Exibe se o ano é bissexto e finaliza o processo.
