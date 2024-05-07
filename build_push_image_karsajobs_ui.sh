# mendefinisikan variabel
username="wildanfajriyan"

# membuat image
echo -e "Build new Docker image:"
docker build . -t $username/karsajobs-ui:latest

# menampilkan daftar image
echo -e "\nList of Docker images:"
docker images

# masuk ke Docker hub
echo -e "\nLogin Docker hub"
echo $PASSWORD_DOCKER_HUB | docker login -u $username --password-stdin

# mengunggah image ke Docker hub
echo -e "\nPush image to Docker hub"
docker push $username/karsajobs-ui:latest
