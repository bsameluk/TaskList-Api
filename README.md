# Task List App

A simple Task List App built with Ruby on Rails.

DEMO - http://ec2-13-50-16-237.eu-north-1.compute.amazonaws.com/

## Ruby version
- 3.3.0

## Local Setup (With Docker)
1. Build the containers:
   ```bash
   docker-compose build
   ```
2. Create and migrate the database:
   ```bash
   docker-compose run app ./bin/rails db:create db:migrate db:seed
   ```
3. Start the application:
   ```bash
   docker-compose up
   ```
4. Stop the application:
   ```bash
   docker-compose down
   ```

## Production Setup (With Docker)
1. Build the containers:
   ```bash
   docker-compose -f docker-compose.prod.yml build
   ```
2. Create and migrate the database:
   ```bash
   docker-compose -f docker-compose.prod.yml run app ./bin/rails db:create db:migrate db:seed
   ```
3. Start the application:
   ```bash
   docker-compose -f docker-compose.prod.yml up -d
   ```
4. Stop the application:
   ```bash
   docker-compose -f docker-compose.prod.yml down
   ```

## Clean Up
1. Remove all containers, volumes, and orphaned resources:
   ```bash
   docker-compose down --volumes --remove-orphans
   docker system prune -a --volumes
   ```
2. Force rebuild and recreate the production environment:
   ```bash
   docker-compose -f docker-compose.prod.yml build --no-cache
   docker-compose -f docker-compose.prod.yml up --force-recreate
   ```
