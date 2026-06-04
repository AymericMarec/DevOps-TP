# README

## Configuration

Créer un fichier `.env` à la racine du projet avec les clés suivantes :

```
PING_LISTENING_PORT=...
INSTANCE_ID=...
```

## Dockerisation API

Deux Dockerfiles sont disponibles pour l'API :
- `dockerfile` : version basique
- `dockerfile2` : version multi-stage optimisée sans les sources

### Build de l'image

```bash
docker build -t tp2-api -f dockerfile2 .
```

### Lancement

```bash
docker run -p 3000:3000 --env-file .env tp2-api
```

## Bonus Assembleur

Un code assembleur (`test.asm`) pour compter jusqu'à 9 est présent dans `/asm`.
La taille de l'image générée est d'environ 8KB (supérieure à l'objectif des 500 bytes).

### Build de l'image (Bonus)

```bash
cd asm
docker build -t {nom de l'image} .
```

### Lancement (Bonus)

```bash
docker run {nom de l'image}
```