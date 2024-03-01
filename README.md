# continuousDeploymentMP
## Permet la mise en place automatique du déploiement continu
#Collez cette ligne dans votre terminal (il faut que vous soyez à la racine du projet).

if [ -d "./ChaCuN" ] 
then\n
    \tclear
    \tgit clone https://github.com/ahlombardini/continuousDeploymentMP.git setupCD && /bin/bash ./setupCD/Setup.sh
  \n

else\n
    \t clear
    \t echo ——————————————————
    \t echo Vérifie que tu es dans le bon repo
    \t echo ——————————————————

fi

