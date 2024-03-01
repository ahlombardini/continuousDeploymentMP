

echo "Mettons En place les fichier nécessaires pour le déploiement continu"






echo $CLASSPATH
if [ -d "./ChaCuN" ]
then
    echo "C'est parti on va tout set up"
    pwd
    mkdir .github && cd .github && mkdir workflows &&   mv ../../setupCD/workflows/* ./ && cd ..
    echo "Repo .github/workflows créée"

    mkdir .scripts && cd .scripts && mkdir run_tests && cd run_tests &&  mv ../../setupCD/run_tests/* ./ && cd ..
    echo "Repo .scripts/run_tests créée"
    rm -rf ./setupCD
    echo "--------------------------"
    echo "ajoute les nouveaux fichiers et push ton projet pour voir si ça a fonctionné"


else
    echo "Vérifie bien que tu es dans le bon repo et relance ce script."
fi
