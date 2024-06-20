# parte 2 hecha por Alfonso Baridon Schlaps


while true; do
    # Solicitar al usuario un nombre
    echo "Introduce un nombre:"
    read nombre

    # Hacer la solicitud a la API de Agify
    response=$(curl -s "https://api.agify.io/?name=$nombre")

    # Extraer la edad de la respuesta JSON utilizando jq
    edad=$(echo $response | jq '.age')

    # Comprobar si la edad es null
    if [ "$edad" == "null" ]; then
        echo "El nombre introducido no es válido o no se encuentra en la base de datos. Por favor, intenta con otro nombre."
    else
        # Mostrar la edad al usuario y salir del bucle
        echo "La edad estimada para el nombre $nombre es $edad años."
        break
    fi
done