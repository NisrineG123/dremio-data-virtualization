\# Virtualisation des données avec Dremio



Projet du module cloud et virtualisation : démonstration de la virtualisation de données

avec Dremio, PostgreSQL et des fichiers CSV.



\## Prérequis

\- Docker Desktop (WSL2)



\## Lancement

docker compose up -d

Puis ouvrir http://localhost:9047 et créer le compte admin.



\## Étapes de la démo

1\. Connexion des sources (PostgreSQL, fichiers CSV)

2\. Requête fédérée

3\. Vues virtuelles (VDS)

4\. Reflections

5\. Comparaison avec ELT (CTAS)



\## Structure

\- `docker-compose.yml` : environnement

\- `sql/` : scripts SQL

\- `data/` : jeux de données

\- `docs/` : captures d'écran

