#!/usr/bin/env bash

# Обрабатываем параметры и аргументы

paramAndArgs () {
    if [ $# == 0 ]
    then
        echo "Наберите 'monitor.sh --help' для вывода справки"
    else
    case $@ in
        -p | --proc) echo "Комманда работы с директорией";;
        -с | --cpu) echo "Комманда работы с процессором";;
        -m | --memory) echo "Комманда работы с памятью";;
        -d | --disk) "Комманда работы с диском";;
        -n | --network) ;;
        -la | --loadaverege) ;;
        -k | --kill) ;;
        -o | --output) ;;
        -h | --help) echo "Помощь";;
        *) echo "Не известная комманда $@ (наберите 'monitor.sh --help' для вывода справки)";;
    esac
    fi
}


paramAndArgs $@