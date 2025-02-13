#!/bin/bash

echo "Initialize and start podman"

podman_check=$(podman machine list)


if [[ $podman_check == *'running'* ]] 
then
  echo "podman est déjà démarré"
else
    echo "Démarrage de podman"
    podman machine init
    podman machine start

fi

echo "Voulez vous effacer toutes les images présentes dans podman ?"
PS3='réponse : '
myoptions=("Oui(O)" "Non(N)")
select opt in  "${myoptions[@]}"
do
    case $REPLY in
        Oui|O)
            echo "podman system prune --all --force && podman rmi --all --force"
            break;;
        "Non"|N)           
            break;;
        *) echo "Choix invalide $REPLY $opt";;
    esac
done

docker-compose up -d