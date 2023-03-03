#!/bin/bash

# URL base de la API de PokeAPI
base_url="https://pokeapi.co/api/v2"

# Obtener un número de pokemon aleatorio entre 1 y 898 (el número total de pokemons en la API)
random_pokemon=$(shuf -i 1-898 -n 1)

# Realizar la solicitud HTTP GET a la API para obtener los detalles del pokemon aleatorio
response=$(curl -s "${base_url}/pokemon/${random_pokemon}")

# Obtener el nombre del pokemon del resultado JSON
name=$(echo "${response}" | jq -r '.name')

# Imprimir el nombre del pokemon
echo "El pokemon aleatorio es: ${name}"