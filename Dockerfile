FROM python:3.5
RUN sudo pip install --upgrade pip \
  && pip install Flask==0.11.1 redis==2.10.5 \
  && useradd -ms /bin/bash admin
USER admin
WORKDIR /app
CMD ["python", "app.py"]
