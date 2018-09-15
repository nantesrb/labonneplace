# Présentation du projet

**labonneplace** est un site (une application) web qui sert à déposer des annonces et les rendre visibles à tous les internautes. Ça vous rappelle [quelque chose](https://www.leboncoin.fr/) ? :smirk:

L'idée, c'est de vous mettre dans un contexte métier qui vous est familier, afin de vous concentrer sur la partie technique (code Ruby on Rails, HTML, CSS, Javascript...).

Vous avez deux options possibles pour aborder le sujet :

- **Partir d'un projet existant :** vous récupérez le code source du projet, et vous cous concentrez sur des évolutions à apporter, en fonction de vos envies ou des propositions faites ci-dessous. L'avantage, c'est que vous partez d'un existant, et vous pouvez vous focaliser sur des sujets techniques qui vous intéressent : le design (en manipulant le code HTML et CSS), ou bien la technique, en développant de nouvelles fonctionnalités.
- **Partir de zéro :** vous initialisez un tout nouveau projet, et vous construisez l'application étape par étape. Cela vous permettra de mieux assimiler les bases du développement web (architecture MVC, routage, etc.). En prenant cette option, vous risquez de ne pas obtenir un résultat finalisé à 100% (ce qui n'est pas grave, évidemment).

Dans tous les cas, les mentors sont là pour vous accompagner. Ils vous expliqueront les fondamentaux de la programmation web, de Ruby on Rails et de l'architecture MVC. Vous pouvez compter sur leur aide pour réaliser tout ce que vous entreprendrez sur ce projet.

## Option 1 : vous décidez de partir d'un projet existant

### Installer l'application

1. Récupérer les sources du projet :

```
git clone git@github.com:nantesrb/labonneplace.git
```

> :hand: Si cela ne fonctionne pas, demandez à votre mentor de vous copier le projet sur votre ordinateur.

2. Se placer dans le répertoire du projet :

```
cd labonneplace
```

3. Installer les dépendances :

```
bundle
```

4. Initialiser la base de données :

```
rails db:create
```

```
rails db:migrate
```

5. Créer des données de test en base de données :

```
rails db:seed
```

6. Démarrer le serveur :

```
rails s
```

7. Se rendre sur la page d'accueil : http://localhost:3000

Voilà, vous êtes désormais prêt(e) à ajouter votre touche personnelle !

### Améliorations envisageables

Si vous êtes en manque d'inspiration, voici quelques propositions d'améliorations qui pourraient être apportées à l'application *labonneplace*. Choisissez celles qui vous tentent le plus ! Votre mentor se fera un plaisir de vous mettre sur la voie, et vous aider pas à pas pour la mise en place

- Rendre les photos cliquables sur la page d'accueil (accès au détail de l'annonce).
- Afficher « Gratuit » au lieu de « 0,00 € ».
- Ajouter un compteur de vues sur chaque annonce (ex : « Annonce consultée 12 fois »).
- Permettre la catégorisation des annonces (immobilier, voiture, enfant, high tech, etc.).
- Sur la page d'accueil, n'afficher que les annonces créées il y a moins de 10 jours.
- Permettre la modification et la suppression d'une annonce.
- Authentifier les utilisateurs (email + mot de passe).
- Pouvoir ajouter plusieurs photos.
- Ajouter des annonces en favoris.
- Intégrer un module de chat avec le vendeur.
- Ajouter une adresse et permettre la recherche géolocalisée (« Rechercher autour de moi »).

## Option 2 : vous décidez de partir de zéro et de créer l'application pas à pas

### Déroulement

Voyez avec votre mentor pour qu'il vous explique chaque étape de la création d'un nouveau projet, d'un premier modèle d'annonce, du contrôleur, des vues de liste et de détail d'une annonce, etc. Tout ceci est très classique, et vous êtes bien sûr libre d'adapter le besoin selon vos envies !

### Pour les mentors : mise en place de l'upload d'images avec Active Storage

À un moment, vous voudrez sûrement pouvoir ajouter une photo à une annonce. Pour vous aider (et ceci s'adresse surtout aux mentors), voici les différentes étapes qui permettent de mettre cela en place à l'aide d'[Active Storage](https://guides.rubyonrails.org/active_storage_overview.html).

1. Générer la migration pour les tables Active Storage :

```
rails active_storage:install
```

2. Déclarer qu'une annonce peut avoir une photo (édition de `app/models/advertisement.rb`) :

```ruby

class Advertisement < ApplicationRecord
  
  has_one_attached :image
  
  # ...
  
end
```

3. Modifier le formulaire de création d'annonce pour ajouter un champ de type `file` (édition de `app/views/advertisements/new.html.erb`) :

```erb
<%= form_with model: @advertisement do |form| %>
  ...
  <%= form.file_field :image %>
  ...
<% end %>
```

Et voilà, c'est tout ! Facile hein ? :smirk:
