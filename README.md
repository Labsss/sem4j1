## Projet THP : the gossip project with Frankie
Projet de Brice Jones (@brice) 

### Objet

C'est un gestionnaire de potins avec Frankie Goes To Hollywood.

L'app met en oeuvre le framework sinatra.

### Utilisation

```
$ git clone git@github.com:notmoebius/sem4j1.git
puis 
$ bundle install
et enfin 
$ shotgun -p 4567
````

Le site fonctionne en localhost: http/localhost:4567

Le fichier db en CSV est dans le répertoire db: gossip.csv

Le menu (navbar avec bootstrap) permet:
* afficher tous les potins
* créer un potin

La visualisation d'un potin se fait par l'URL: http://localhost:4567/gossips/6

L'édition d'un ragôt se fait par :
- soit le bouton Editer le potin
- soit par le lien directe: http://localhost:4567/gossips/6/edit

### Issue en cours
Le §2.8 sur la gestion des commentaires n'est pas implémenté.

Le groupe Frankie Goes To Hollywood tient son nom du chanteur [Frank Sinatra](https://c.o0bg.com/rf/image_371w/Boston/2011-2020/2015/03/02/BostonGlobe.com/Travel/Images/AP42010101294.jpg) quand ce dernier est allé pour la première fois à Hollywood.
