# 🔢 TP Flutter — Application Compteur Améliorée

## 📌 Présentation

Ce projet est une application mobile développée avec **Flutter et Dart** dans le cadre d'un travail pratique (TP).

L'objectif est de développer un compteur interactif et de l'améliorer en intégrant la gestion des limites, des alertes visuelles et une personnalisation dynamique de l'affichage.

## 🎯 Objectifs du TP

- Manipuler les widgets Flutter.
- Gérer les interactions utilisateur avec `setState()`.
- Implémenter des conditions pour contrôler les valeurs du compteur.
- Personnaliser dynamiquement l'interface.
- Utiliser les composants `SnackBar` et `ElevatedButton`.

## 🚀 Fonctionnalités réalisées

### 1. Gestion des limites et des seuils

**Limites Min / Max**
- Valeur minimale : 0.
- Valeur maximale : 10.
- Le compteur ne peut pas dépasser les limites définies.

**Alertes visuelles**
- Affichage d'un `SnackBar` lorsque la valeur maximale est atteinte.
- Message : « Limite maximale atteinte ! ».

**Désactivation des boutons**
- Le bouton `−` est désactivé lorsque le compteur atteint 0.
- Le bouton `+` est désactivé lorsque le compteur atteint 10.

### 2. Personnalisation dynamique

**Changement de couleur**
- 🟢 Vert : nombres pairs.
- 🟠 Orange : nombres impairs.

**Taille dynamique du texte**
- La taille du compteur augmente progressivement avec sa valeur.

**Indicateurs numériques**
- Affichage de « Nombre Pair ».
- Affichage de « Nombre Impair ».
- Identification des nombres premiers : 2, 3, 5 et 7.

## 🛠️ Technologies utilisées

| Technologie | Utilisation |
|---|---|
| Flutter | Développement de l'interface |
| Dart | Logique de programmation |
| Material Design | Composants graphiques |
| VS Code / Android Studio | Environnement de développement |

## 📂 Structure du projet

- `lib/main.dart` — Interface et logique du compteur.
- `pubspec.yaml` — Configuration et dépendances Flutter.
- `android/` — Configuration Android.
- `web/` — Configuration Web.

## ▶️ Installation et exécution

**1. Cloner le dépôt**

`git clone https://github.com/yasmine88A/flutter-tp-compteur.git`

**2. Accéder au projet**

`cd flutter-tp-compteur`

**3. Installer les dépendances**

`flutter pub get`

**4. Exécuter l'application**

`flutter run`

Pour une exécution sur Google Chrome :

`flutter run -d chrome`

## ✅ Résultat attendu

L'application permet d'incrémenter et de décrémenter un compteur entre 0 et 10, tout en adaptant automatiquement son apparence selon la valeur affichée.

Les améliorations apportées rendent l'application plus interactive et permettent de pratiquer la gestion des états et des événements avec Flutter.

## 👩‍💻 Réal
