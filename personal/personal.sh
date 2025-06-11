#!/bin/bash

options=("git configs (user, email)" "ssh keys" "netplan config" "ssh server")
values=("01-git" "02-keys" "03-netplan" "04-sshd")
selected=(0 0 0 0)
cursor=0

enable_raw_mode() {
  stty -echo -icanon time 0 min 0
}

disable_raw_mode() {
  stty sane
}

trap "disable_raw_mode; tput cnorm; echo -e '\n\n'; exit" INT TERM EXIT

print_menu() {
  clear
  echo "Use ↑ ↓ para navegar, [espaço] para marcar, [Enter] para confirmar."
  echo

  for i in "${!options[@]}"; do
    prefix="   "
    checkbox="[ ]"
    [[ ${selected[$i]} -eq 1 ]] && checkbox="[x]"
    [[ $i -eq $cursor ]] && prefix=" → "
    echo "${prefix}${checkbox} ${options[$i]}"
  done
}

read_input() {
  IFS= read -rsn1 key

  if [[ $key == $'\x1b' ]]; then
    read -rsn1 key2
    read -rsn1 key3
    key+="$key2$key3"

    case "$key" in
      $'\x1b[A') ((cursor--));;
      $'\x1b[B') ((cursor++));;
    esac
  elif [[ $key == " " ]]; then
    selected[$cursor]=$((1 - ${selected[$cursor]}))
  elif [[ $key == "" ]]; then
    return 1
  fi

  ((cursor < 0)) && cursor=0
  ((cursor >= ${#options[@]})) && cursor=$((${#options[@]} - 1))
  return 0
}

enable_raw_mode
tput civis

while true; do
  print_menu
  read_input || break
  sleep 0.05
done

disable_raw_mode
tput cnorm
echo -e "\n\n"

echo "Executando selecionados..."
for i in "${!options[@]}"; do
  [[ ${selected[$i]} -eq 1 ]] && echo "EXECUTANDO ${options[$i]} (${values[$i]})"
  [[ ${selected[$i]} -eq 1 ]] && bash "./${values[$i]}.sh"
done
