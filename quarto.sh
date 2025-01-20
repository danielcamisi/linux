pasta="projetos_daniel"

if [[ -e "$pasta" ]]; then
    echo "A pasta existe!"
else
    mkdir "$pasta"
    echo "A pasta '$pasta' foi criada!"
fi


#mudando/aprendendo

arq="projetos_shell_daniel"

if [[ -e "$arq" ]]; then
        mkdir "$arq"
    echo "A pasta existente foi criada '$arq' foi criada!"
fi