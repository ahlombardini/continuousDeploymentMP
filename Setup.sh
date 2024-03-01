

echo "Mettons En place les fichier nécessaires pour le déploiement continu"






echo $CLASSPATH
if [ -d "./ChaCuN" ]
then
    echo "C'est parti on va tout set up"
    mkdir .github && cd .github && mkdir workflows && cd ..  &&  mv setupCD/workflows/* .github/workflows
    echo "Repo .github/workflows créée"
    mkdir .scripts && cd .scripts && mkdir run_tests && cd .. &&  mv setupCD/scripts/* .scripts/run_tests
    echo "Repo .scripts/run_tests créée"
    rm -rf setupCD
    echo "--------------------------"
    echo "IL TE SUFFIT MAINTENANT DE JUSTE PUSH TON PROJET ET LES TESTS SE FERONT TOUS SEULS"


else
    echo "Vérifie bien que tu es dans le bon repo et relance ce script."
fi
