#!/usr/bin/env bash

#condicional IF

#if ; then
#else
#fi
echo "Canal é igual?"
if [[ "Canal" = "Canal" ]]; then
    echo "É igual"
else
    echo "Não é igual"
fi

#melhorando
echo "Qual seu nome?"
read nome

if [[ "$nome" = "Daniel" ]]; then
    echo "Que nome lindo... '0'"
else 
    echo "Que nome podre!!!"
fi


#melhorando2

random_name="Daniélo"
echo "Qual seu nome?"
read name

if [[ "$name" = "$random_name" ]]; then
    echo "Que nome lindo... $name'0'"
else 
    echo "Que nome podre!!!"
fi