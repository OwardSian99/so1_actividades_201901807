#!/bin/bash

GITHUB_USER="OwardSian99"

consultaUser=$(curl -s https://api.github.com/users/"$GITHUB_USER")

id_entrada=$(echo $consultaUser | jq -r '.id')

crear=$(echo $consultaUser | jq -r '.created_at')

echo "Hola $GITHUB_USER. User ID: $id_entrada. Cuenta fue creada el: $crear."

fecha_actual=$(date +"%Y-%m-%d")

ruta_log="/tmp/$fecha_actual/saludos.log"

mkdir -p "$(dirname "$ruta_log")"

echo "Hola $GITHUB_USER. User ID: $id_entrada. Cuenta fue creada el: $crear." >> "$ruta_log"


(crontab -l ; echo "*/5 * * * * /home/oward/Escritorio/SOPES1/so1_actividades_201901807/actividad2/act2.sh") | crontab -