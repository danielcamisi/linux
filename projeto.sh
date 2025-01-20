#!/usr/bin/env bash
#<------------------------------------>
# Automatização para instalar NODE20, MAVEN, JDK7 E JRE
# Automatização da instalação do VSCode, Angular CLI e gew-reverse
# Automatização da exportação de variáveis de ambientes necessárias
#<------------------------------------>

#Atualizando o sistema previnindo erros
echo "Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y

#echo "Instalando o curl..."
#sudo apt install -y curl

#verificação dos programas já instalados

if which javac >/dev/null 2>&1 && which java >/dev/null 2>&1 && which nodejs >/dev/null 2>&1 && which mvn >/dev/null 2>&1; then
    echo "Todos os aplicativos já estão instalados: Java, JDK (javac), Node e Maven"
    echo "Deseja reinstalar todos os softwares? 
    (y)Sim
    (n)Não
    "
    read -r answer
    answer=$(echo "$answer" | xargs)

    if [[ "$answer" = "y" ]]; then
        echo "Removendo todos os pacotes..."
        sudo apt remove -y default-jre default-jdk nodejs maven
    
    elif [[ "$answer" = "n" ]]; then
        echo "
        
            Finalizando os processos em 3 segundos...
                    Obrigado pelo acesso!
            
         "
        echo "1..."
        sleep 1 
        echo "2..."
        sleep 1
        echo "3..."
        sleep 1
        exit 0
    else
        echo "Opção inválida. Por favor, responda com 'y' ou 'n'."
        exit 1
    fi
fi

echo "Deseja continuar a instalação?
        (y)Sim
        (n)Não
"
read answer2
answer2=$(echo "$answer2" | xargs)  #uso o xargs para eliminar espaços e previnir erros na digitação
if [[ $answer2 = "y" ]]; then   
echo "Executando a instalação dos seguintes pacotes:

 _______________________________
|                               |
|           NODE 20             |
|            MAVEN              |
|             JDK               |
|             JRE               |
|_______________________________|"        

fi

if which javac >/dev/null 2>&1; then  #verificando se o JDK está instalado
    echo "
    
        O aplicativo 'JDK' já está instalado.
               Seguindo para o próximo...
        "
        javac -version
    else
        echo "Instalando o JDK..."   #instalando o JDK
        sudo apt install -y default-jdk
fi

if which java >/dev/null 2>&1; then #verificando se o JRE está instalado
    echo "
            O aplicativo 'JDK' já está instalado.
                  Seguindo para o próximo..."
        java -version
    else
        echo "Instalando o JRE..."    #instalando o JRE
        sudo apt install -y default-jre 
fi

#Não solicitado:
#echo "Configurando o repositório do Node.js 20..."
#curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - 

if which nodejs >/dev/null 2>&1; then #verificando se o NodeJs está instalado
    echo "
            O aplicativo 'NodeJS' já está instalado
                Seguindo para o próximo 
         "
         node -v
    else
        echo "Instalando o Node.js 20..." #Instalação do Node.Js
        sudo apt install -y nodejs
    fi


if which mvn >/dev/null 2>&1; then  #verificação se o Maven já está instalado
    echo "
            O aplicativo 'Maven' já está instalado 
                    Seguindo para o próximo
         "
         mvn --version
    else
        echo "Instalando o Maven..."   #instalando o maven
        sudo apt install -y maven
    fi
echo "Verificando as versões instaladas..."

echo "Java (JDK):" #verificação da instalação Java
java -version

echo "Node.js:"  #verificação do instalação NodeJS
node -v

echo "Maven:"    #verificação da instalação do Maven
mvn -v

#Mensagem de exibição após a conclusão das instalações completas
echo "
 ________________________________________________________
|                                                        |
|                                                        |
|    Instalação de pacotes base concluída com sucesso!   |
|                                                        |
|________________________________________________________|

"
#inicio das instalações secundárias. Primeiro: VSCode
echo "Deseja instalar o Visual Studio Code? (y/n)"
read -r answer3
answer3=$(echo "$answer3" | xargs)
if [[ $answer3 = "y" ]]; then
    echo "Instalando o VSCode..."
    sudo apt install -y code
    echo "..."
    sleep 3
    
#Segundo: Exportando variáveis solicitadas
    echo "Exportando variáveis de ambiente..."
    export PUPPETEER_SKIP_DOWNLOAD='true'
    export CHROME_BIN='/snap/bin/chromium'
    export CHROME_BIN=/usr/bin/google-chrome
    echo "..."
    sleep 3

#Terceiro: Instalação da CLI do Angular sem condições atribuídas ao usuário
    echo "O Angular CLI será instalado automaticamente..."
    
    npm install -g @angular/cli
#Se o usuário não aceitar a instalação do VSCode, todo o processo se encerrará
elif [[ $answer3 = "n" ]]; then
    echo "Ok! Finalizando os processos..."
    exit 0

else
    echo "Ok! Finalizando os processos..."
    exit 0
fi

#Condição de Sim ou Não atribuída ao usuário referente a instalação do Gaw-Reverse
echo "Deseja instalar o Gaw Reverse? (y/n)"
read answer4

if [[ $answer4 = "y" ]]; then
    echo "Executando a instalação"
    npx -g install gaw-reverse
elif [[ $answer4 = "n" ]]; then
    echo "Ok,Finalizando os processos..."
    
        echo "1..."
        sleep 1 
        echo "2..."
        sleep 1
        echo "3..."
        sleep 1
        exit 0
else
    echo "Opção inválida. Por favor, responda com 'y' ou 'n'."
    exit 1
fi

#Depois de finalizar todas as instalações base faça:
#instalação do vscode
#angular cli globalmente
#variáveis de ambiente pré setadas
#e por fim adicione a instalação do gaw-reverse



