#!/bin/bash

echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo "Digite qual operação deseja realizar (+, -, * ou /):"
read operacao

if [ "$operacao" = "+" ]; then
    resultado=$((num1 + num2))
    echo "Resultado da soma é: $resultado"

elif [ "$operacao" = "-" ]; then
    resultado=$((num1 - num2))
    echo "Resultado da subtração é: $resultado"

elif [ "$operacao" = "*" ]; then
    resultado=$((num1 * num2))
    echo "Resultado da multiplicação é: $resultado"

elif [ "$operacao" = "/" ]; then
    if [ "$num2" -ne 0 ]; then
        resultado=$((num1 / num2))
        echo "Resultado da divisão é: $resultado"
    else
        echo "Erro: divisão por zero!"
    fi

else
    echo "Operação inválida!"
fi
