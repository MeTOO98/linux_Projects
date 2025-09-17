#!/bin/bash



RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
MAGENTA="\e[35m"
CYAN="\e[36m"
WHITE="\e[37m"
NC="\e[0m"

 




cal() {

echo -e  "${BLUE}===============================================${NC}"
echo -e  "${GREEN}              Calcultor                       ${NC}"
echo -e  "${BLUE}===============================================${NC}"
echo -e  "${WHITE}| % | * | / | + | - | ^ | && | || | 0 | 1 | 2 |${NC}"
echo -e  "${WHITE}| 3 | 4 | 5 | 6 | 7 | 8 | 9  |================${NC}"
echo -e  "${CYAN}Enter The First Number :  ${NC}" 
read first_number

if ! [[ "$first_number" =~ ^[0-9]+$ ]]; then
 echo -e "${RED}$first_number is not valid you must enter numbers only${NC}"
 return 1 
fi

echo -e  "${CYAN}Enter The Second Number :  ${NC}" 
read second_number


if ! [[ "$second_number" =~ ^[0-9]+$ ]]; then 
 echo -e "${RED}$second_number is not valid you must enter numbers only${NC}"
 return 1
fi

echo -e  "${CYAN}Enter The operation that you want to make${NC}" 
read op 

if  ! [[ "$op" =~ ^[%*/+-^]$ || "$op" == "&&"  ||  "$op" == "||" ]]; then
 echo -e "${RED}$op is not valid you must enter one of these operations [%,*,/,+,-,^,&&,||]${NC}" 
 return 1 
fi

case "$op" in 
   "+") echo -e "${GREEN}The Result = $(($first_number + $second_number))${NC}" ;;
   "-") echo -e "${GREEN}The Result = $(($first_number - $second_number))${NC}" ;;
   "*") echo -e "${GREEN}The Result = $(($first_number * $second_number))${NC}" ;;
   "/") echo -e "${GREEN}The Result = $(($first_number / $second_number))${NC}" ;; 
   "%") echo -e "${GREEN}The Result = $(($first_number % $second_number))${NC}" ;; 
   "^") echo -e "${GREEN}The Result = $(($first_number ** $second_number))${NC}" ;;
   "&&") echo -e "${GREEN}The Result = $(($first_number && $second_number))${NC}" ;; 
   *) echo -e "${GREEN}The Result = $(($first_number || $second_number))${NC}" ;;

esac 

} 

main () { 
clear
echo -e "${WHITE}Hello to your Calculator${NC}"
cal 
} 

main
