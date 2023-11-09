FROM python:3.10.8

ENV PYTHONBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir /app

WORKDIR /app

RUN pip install --upgrade pip

# Copiez le fichier requirements.txt dans l'app

COPY requiements.txt /app/

# Installez les dépendances du projet
RUN pip install -r requiements.txt

# Copiez le contenu du répertoire actuel dans l'app
COPY . /app/


# Exposez le port 8000 pour que Django puisse y accéder
# EXPOSE 8000

# Démarrez le serveur Django une fois le conteneur lancé
# CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
