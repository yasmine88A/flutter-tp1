# 🔢 TP1 Flutter — Application Compteur Améliorée

## 📌 Présentation du projet

Ce projet est une application développée avec **Flutter et Dart** dans le cadre d'un travail pratique (TP).

L'objectif est de créer un compteur interactif et d'y intégrer plusieurs améliorations : gestion des limites, alertes visuelles et personnalisation dynamique de l'affichage.

## 🎯 Objectifs du TP

- Découvrir les widgets Flutter et Material Design.
- Gérer les interactions avec `StatefulWidget` et `setState()`.
- Implémenter des conditions pour contrôler les valeurs du compteur.
- Afficher des alertes avec `SnackBar`.
- Modifier dynamiquement l'apparence de l'interface.

## 🚀 Fonctionnalités et améliorations

### 1. Gestion des limites et des seuils

**Limites minimale et maximale**
- Le compteur est limité entre **0 et 10**.
- Il ne peut pas descendre en dessous de 0 ni dépasser 10.

**Alertes visuelles**
- Un `SnackBar` apparaît lorsque le compteur atteint 10.
- Message affiché : **« Limite maximale atteinte ! »**

**Désactivation automatique des boutons**
- À 0, le bouton de décrémentation `−` est désactivé.
- À 10, le bouton d'incrémentation `+` est désactivé.
- Les boutons se réactivent automatiquement lorsque la valeur le permet.

### 2. Personnalisation dynamique du compteur

**Changement de couleur selon la valeur**
- 🟢 Vert : lorsque le nombre est pair.
- 🟠 Orange : lorsque le nombre est impair.

**Taille dynamique**
- La taille du texte augmente progressivement avec la valeur du compteur.

**Indicateur de parité et de primalité**

Un libellé apparaît sous le compteur :

- `Nombre Pair` pour les nombres pairs non premiers.
- `Nombre Impair` pour les nombres impairs non premiers.
- `Nombre Premier` pour les nombres premiers : 2, 3, 5 et 7.

## 🛠️ Technologies utilisées

| Technologie | Utilisation |
|---|---|
| Flutter | Développement de l'application |
| Dart | Logique du compteur |
| Material Design | Interface et composants graphiques |
| StatefulWidget | Gestion de l'état |
| setState() | Actualisation de l'interface |
| SnackBar | Affichage des alertes |
| VS Code / Android Studio | Développement et exécution |

## 📂 Structure du projet

```text
flutter-tp1/
├── android/
├── lib/
│   └── main.dart
├── pubspec.yaml
├── pubspec.lock
└── README.md
```

Le fichier `lib/main.dart` contient l'interface et les fonctionnalités du compteur.

## ▶️ Installation et exécution

### 1. Cloner le dépôt

```bash
git clone https://github.com/yasmine88A/flutter-tp1.git
```

### 2. Accéder au projet

```bash
cd flutter-tp1
```

### 3. Installer les dépendances

```bash
flutter pub get
```

### 4. Lancer l'application

```bash
flutter run
```

Pour exécuter l'application sur Google Chrome :

```bash
flutter run -d chrome
```

## ✅ Résultats

L'application permet d'incrémenter et de décrémenter un compteur tout en respectant les limites définies.

Elle adapte automatiquement la couleur, la taille du texte et l'indicateur numérique selon la valeur affichée.

Ces améliorations permettent de mettre en pratique la gestion des états, les conditions et les interactions utilisateur avec Flutter.

## 👩‍💻 Réalisation

**Yasmine Anwar**

Étudiante en ingénierie informatique

**Projet académique — TP1 Flutter**
