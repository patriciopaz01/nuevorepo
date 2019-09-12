#!/bin/bash
#Automatizacion de git
clear
echo "****************************************"
echo "***      Menu GitHub                 ***"
echo "****************************************"
echo ""
echo ""
echo " 1.- Crear repositorio desde cero"
echo " 2.- Subir 1 archivos"
echo " 3.- Salir"
echo ""
echo ""
echo " Ingese una opcion"
read opcion
if [ $opcion  = 1 ];
then
	echo "Ingrese texto de repositorio (README)"
	read texto
	echo "ingrese el nombre de usuario de github"
	read usuario
	echo "Ingrese el contenido del Commit"
	read commit
	echo "Ingrese el nombre del repositorio en github"
	read repo
	#comienzo de comandos
	echo "# $texto " >> README.md
	git init
	git add README.md
	git commit -m " $commit "
	git remote add origin https://github.com/$usuario/$repo.git
	git push -u origin master
fi
if [ $opcion = 2 ];
then
	ls        
	echo "Ingrese el contenido del Commit"
        read commit
	echo "ingrese el nombre del archivo a subir"
	read archivo
	#ejecutar comandos
	git add $archivo
	git commit -m " $commit "
	git push -u origin master
fi





	
