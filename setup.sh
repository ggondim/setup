#!/bin/bash

# Diretório contendo os scripts
SCRIPT_DIR="./"

# Gera a lista de scripts disponíveis no diretório
scripts=($(ls "$SCRIPT_DIR"/*.sh))

# Cria uma string com os scripts para o Dialog
options=()
for i in "${!scripts[@]}"; do
    options+=($i "${scripts[$i]}" "OFF")
done

# Exibe o menu de checkboxes
selected=$(dialog --title "Seleção de Scripts" --checklist \
"Marque os scripts que deseja executar:" 20 70 15 \
"${options[@]}" 3>&1 1>&2 2>&3)

# Verifica se algo foi selecionado
if [[ $? -eq 0 ]]; then
    # Converte a lista de índices selecionados para um array
    selected_indices=($(echo $selected | tr -d "\""))

    # Executa os scripts selecionados
    for index in "${selected_indices[@]}"; do
        script="${scripts[$index]}"
        clear
        echo "Executando $script..."
        bash "$script"
    done

    clear
else
    echo "Nenhum script selecionado."
fi
