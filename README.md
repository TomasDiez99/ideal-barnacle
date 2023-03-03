# Acción de Github para imprimir el nombre de un pokemon aleatorio
Esta acción personalizada de Github utiliza la API de PokeAPI para imprimir el nombre de un pokemon aleatorio en la salida estándar. Es útil para demostrar cómo consumir APIs REST en una acción personalizada de Github.

# Ejemplo de uso

```yml
name: Random pokemon Custom Action Test

on:
  push:
    branches:
      - main

jobs:
  test:
    name: "Custom action Test"
    runs-on: ubuntu-latest
    steps:
      - uses: TomasDiez99/ideal-barnacle@main
      - run: echo "Fin workflow!"
```
En este ejemplo de un workflow, referenciamos a nuestra custom action en un step.

# Comentarios
No es necesario utilizar un token de github ya que la custom action no requiere acceder a tu repositorio para ejecutarse.