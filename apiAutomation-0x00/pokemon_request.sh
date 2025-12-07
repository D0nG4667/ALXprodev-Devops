#!/bin/bash
# Script: pokemon_request.sh
# Objective: Automate API request to Pokémon API for Pikachu
# Saves response to data.json or logs errors to errors.txt

API_URL="https://pokeapi.co/api/v2/pokemon/pikachu"
OUTPUT_FILE="data.json"
ERROR_FILE="errors.txt"

# Make the request
curl -s -o "$OUTPUT_FILE" -w "%{http_code}" "$API_URL" | grep -q "200"

# Check if request succeeded
if [ $? -ne 0 ]; then
    echo "Error: Failed to fetch data from $API_URL" >> "$ERROR_FILE"
    rm -f "$OUTPUT_FILE"  # remove incomplete file if request failed
fi
