echo 'CREATE DATABASE agro' | mysql -u root 
cat ../agro/schemas/agroSchema.sql | mysql -u root 
cat ../agro/schemas/agroLoader.sql | mysql -u root
