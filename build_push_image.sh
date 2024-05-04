# mendefinisikan variabel
username="wildanfajriyan"

# membuat image
echo -e "Build new Docker image:"
docker build -t item-app:v1 .

# menampilkan daftar image
echo -e "\nList of Docker images:"
docker images

# mengubah nama image
echo -e "\nCreate new tag of Docker image"
docker tag item-app:v1 $username/item-app:v1

# masuk ke Docker hub
echo -e "\nLogin Docker hub"
echo $PASSWORD_DOCKER_HUB | docker login -u $username --password-stdin

# mengunggah image ke Docker hub
echo -e "\nPush image to Docker hub"
docker push $username/item-app:v1
