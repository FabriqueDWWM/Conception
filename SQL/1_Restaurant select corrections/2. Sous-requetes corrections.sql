--1. Lister les noms des employés qui n'ont pris aucune commande
SELECT Nom From employes where idEmploye NOT IN (SELECT idEmploye from commandes Order By idEmploye)

--2. Lister les noms des employés qui ont pris plus de 5 commandes en 2019
SELECT Nom From employes where idEmploye IN (SELECT idEmploye from commandes where YEAR(dateCommande)= 2019 group by idEmploye HAVING count(*) >5)

--3. Lister les noms des boissons qui n'ont jamais été commandées
Select Designation From boissons where idBoisson NOT IN (SELECT idBoisson from commande_boissons)	

--4. Afficher le nom des boisson qui ont été commandées au moins 10 fois
Select Designation From boissons where idBoisson IN (SELECT idBoisson from commande_boissons group by idBoisson HAVING count(*) >=10)
