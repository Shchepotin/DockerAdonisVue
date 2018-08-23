#!/bin/bash

### For AdonisJS

if [ ! -f ./.env ]; then
    cp .env.example .env
    adonis key:generate
fi

npm install
adonis migration:run
# adonis seed
adonis serve --dev
