# Docker flask app

## Getting started

### Local

```bash
virtualenv venv -p python3
source venv/bin/activate
pip install -r requirements.txt
flask run
# visit localhost:5000/test
```

### Docker

```bash
# to build the docker
docker build -t flask-docker:latest .
# to run
docker run -d --name flask-docker -p 127.0.0.1:5000:5000 flask-docker
# to stop
docker stop flask-docker
```