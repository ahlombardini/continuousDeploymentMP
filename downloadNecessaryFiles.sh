

echo "Mettons En place les fichier nécessaires pour le déploiement continu"






echo $CLASSPATH
if [ -d "./ChaCuN" ]
then
    echo "C'est parti on va tout set up"
    echo $PATH
    mkdir .github &&  mkdir .github/workflows && cd .. &&  mv setupCD/workflows/* .github/workflows
    echo "Repo .github/workflows créée"

    mkdir .scripts && mkdir .scripts/run_tests &&  mv setupCD/run_tests/* .scripts/run_tests
    echo "Repo .scripts/run_tests créée"
    rm -rf ./setupCD
    echo "--------------------------"
    echo "ajoute les nouveaux fichiers et push ton projet pour voir si ça a fonctionné"


else
    echo "Vérifie bien que tu es dans le bon repo et relance ce script."
fi
