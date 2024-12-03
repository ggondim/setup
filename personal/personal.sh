# Directory containing the scripts
SCRIPT_DIR="./"

# Generate the list of available scripts in the directory
scripts=($(ls "$SCRIPT_DIR"/*.sh))

# Create a string with the scripts for the Dialog
options=()
for i in "${!scripts[@]}"; do
    options+=($i "${scripts[$i]}" "OFF")
done

# Display the checkbox menu
selected=$(dialog --title "Script Selection" --checklist \
"Check the scripts you want to execute:" 20 70 15 \
"${options[@]}" 3>&1 1>&2 2>&3)

clear

# Check if something was selected
if [[ $? -eq 0 ]]; then
    # Convert the list of selected indices to an array
    selected_indices=($(echo $selected | tr -d "\""))

    # Execute the selected scripts
    for index in "${selected_indices[@]}"; do
        script="${scripts[$index]}"
        echo "Executing $script..."
        bash "$script"
    done

else
    echo "No script selected."
fi