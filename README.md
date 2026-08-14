# Corpus synthétique — étude sur les signaux d'activité GitHub

> **Ce dépôt ne contient aucun travail humain.**
> L'intégralité du code et de l'historique de commits est générée
> automatiquement. Il ne doit être interprété ni comme une compétence, ni
> comme une expérience, ni comme une contribution réelle.

## Objet

Ce dépôt est l'artefact expérimental d'une étude mesurant la fiabilité des
signaux d'activité GitHub (graphe de contributions, diversité de langages,
régularité des commits) lorsqu'ils sont exploités par des outils de sourcing
et de présélection automatisés.

L'hypothèse testée est que ces signaux sont produisibles à coût quasi nul et
ne constituent donc pas un discriminant valide de compétence.

## Identification des artefacts

Tous les commits portent les trailers suivants :

```
X-Synthetic-Commit: true
Study-Ref: GHSIG-2026-01
```

Pour lister les commits synthétiques :

```sh
git log --format='%H %s' --grep='^X-Synthetic-Commit: true$'
```

Tous les fichiers sources portent un en-tête d'avertissement en commentaire natif.

## Référence et contact

- Étude : `GHSIG-2026-01`
- Contact : maximeabade@gmail.com

Ce dépôt sera archivé ou supprimé à la clôture de l'étude.
