#!/usr/bin/env bash

nome="Meu nome é Daniel! e o seu?"
NOME="as duas variáveis possuem as mesmas caracteres, porém está está em maiúscula... logo ela é diferente"
DATE="A data de hoje é: $(date +%F)"


echo "Nome"
echo "$nome"
echo "$NOME"
echo "$DATE"

#estudando o comando read

echo "Qual o seu nome?"
read myname

echo "Qual sua idade?"
read idade

echo "Qual seu signo?"
read signo

echo "Qual sua Cidade?"
read cidade

echo "Digite seu CEP"
read CEP

echo -e "\nSeu nome é: $myname, sua idade é: $idade, seu signo é: $signo, você mora em: $cidade, no CEP: $CEP"