#comando ELIF Senão se 2/3
#Criando um sistema funcional

if [[ "$EUID" -ne 0 ]]; then
    echo "Necessita de permissão root"
    exit 1
fi

echo "
1) Atualizar o Sistema
2) Instalar um Programa
3) Desinstalar um Programa
"
read option

if [[ "$option" -eq "1" ]];then
    echo "Atualizando sistema..."
    apt update
    echo "Sistema atualizado!"
elif [[ "$option" -eq "2" ]];then
    echo "Qual programa você deseja instalar?"
    read install
    apt install "$install"
elif [[ "$option" -eq "3" ]];then
    echo "Qual programa você deseja Desinstalar?"
    read delete
    apt remove "$delete"
else
    echo "Opção Inválida."
fi