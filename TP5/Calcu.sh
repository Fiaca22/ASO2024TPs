# Parte 1 hecha por Alan Axel Hansen

echo "Buenas tardes! Soy Jorge Calculadora ¿que operacion queres que haga?"


while true; do
    echo " "
    echo "1. sumar"
    echo "2. resta"
    echo "3. multiplicar"
    echo "4. dividir"
    echo "5. cerrar"
    read -p "que quiere hacer?" op

    if [ "$op" -eq 5 ]; then
        echo "cerrando.....nos vemos crack"
        break
    fi

    if [[ "$op" -lt 1 || "$op" -gt 4 ]]; then
        echo "ingresa un numero entre 1 y 4 para hacer la operacion"
        continue
    fi

    read -p "ingrese el primer numero: " n1
    read -p "ahora el segundo: " n2

    case $op in
        1)
            result=$(echo "$n1 + $n2" | bc)
            echo "$n1 + $n2 da: $result"
            ;;
        2)
            result=$(echo "$n1 - $n2" | bc)
            echo "$n1 - $n2 es: $result"
            ;;
        3)
            result=$(echo "$n1 * $n2" | bc)
            echo "$n1 * $n2 da: $result"
            ;;
        4)
            if [ "$n2"-eq 0 ]; then
                echo "ingresaste 0, no se puede dividir por 0"
            else
                result=$(echo "scale=1; $n1 / $n2" | bc)
                echo "la division de $n1 / $n2 da: $result"
            fi
            ;;
    esac
done


