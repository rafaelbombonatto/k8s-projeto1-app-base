docker build -t bombonatto/projeto-backend-php:1.0 backend/.
docker build -t bombonatto/projeto-database:1.0 database/.

docker push bombonatto/projeto-backend-php:1.0
docker push bombonatto/projeto-database:1.0

kubectl apply -f ./services.yml

kubectl apply -f ./deployment.yml

