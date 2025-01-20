#comando ELIF Senão se 2/3
echo -e "\n"
echo " __________Verificar se o nome está na lista__________"
echo "|                                                     |"
echo "|                                                     |"
echo "|        Lista de convidados para o casamento         |"
echo "|                                                     |"
echo "|             Quem não estiver na lista               |"
echo "|                                                     |"
echo "|                 Não deixar entrar                   |"
echo "|                                                     |"
echo -e "|_____________________________________________________|\n"
echo -e "Digite o Nome do convidado: \n"
read nome

if [[ "$nome" = "Paulo Muzy" ]]; then
    echo -e "\nO nome correto era Paulo Muzy"
elif [[ $nome = "Daniel" ]]; then
    echo -e "\nO Daniel está convidado!"
elif [[ $nome = "Julia" ]]; then
    echo -e "\nA Julia está convidada!"
elif [[ $nome = "Rogério" ]]; then
    echo -e "\nO Rogério está convidado!"
elif [[ $nome = "Rodrigo" ]]; then
    echo -e "\nO Rodrigo está convidado!"
elif [[ $nome = "Marcos" ]]; then
    echo -e "\nO Marcos está convidado!"
elif [[ $nome = "Miguel" ]]; then
    echo -e "\nO Miguel está convidado!"
    else 
        echo -e "Não encontrei nenhum $nome na lista...\n"
        echo "Peça para o $nome se retirar"
fi