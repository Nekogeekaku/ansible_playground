# ansible_playground
# Un environement bac à sable pour faire tourner ansible grace à docker compose




## Manuel d'utilisation

+ Installez podman sur votre machine

+ dans le répertoire ansible-server exécutez
```bash
docker build -t ansible-server .
```

+ dans le répertoire ssh-enabled-ubuntu
``` bash
docker build -t remote-host-ssh .
``` 

+ à la racine du répertoire exécutez :
``` bash
./start_podman_and_container.sh 
``` 
puis
```bash
docker exec -it ansible bash
```

Vous pouvez ensuite exécuter les 3 exemples

```bash
cd /projects
cd 1

ansible-playbook hello-world.yml

cd ..

ansible all --inventory=remote-host-one, -m ping \
  --extra-vars "ansible_user=myroot ansible_password=mypassword"

cd 2
ansible-playbook -i hosts hello-world.yml
```

Pour arrêter le bac sable faites un 
```bash
docker compose down
```