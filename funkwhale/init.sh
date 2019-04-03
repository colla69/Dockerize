touch .env
echo "FUNKWHALE_HOSTNAME=yourdomain.funkwhale" >> .env
echo "FUNKWHALE_PROTOCOL=https" >> .env  # or http
echo "DJANGO_SECRET_KEY=$(openssl rand -hex 45)" >> .env  # generate and store a secure secret key for your instance
# Remove this if you expose the container directly on ports 80/443
echo "NESTED_PROXY=1" >> .env 
