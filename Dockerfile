FROM python:3.8-slim-buster 

RUN pip3 install Flask

WORKDIR /project

COPY dossier_src/app_hello.py app_hello.py

ENV FLASK_APP=/project/app_hello.py

# ENV FLASK_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]


