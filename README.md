Metasploit Web Service
======================

A docker-compose set up to run the Metasploit web service. Customizations can be made in database.yml and docker-compose.yml to configure database access.

Usage
-----

By default, the server listens unauthenticated until you add a user. An admin user can be added with

    curl -X POST "http://127.0.0.1:8080/api/v1/users" -H "Content-Type: application/json" -d "{ \"username\": \"default\", \"password\": \"password\", \"admin\": \"true\"}"

After this, you must authenticate for all access.
