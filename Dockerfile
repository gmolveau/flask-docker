FROM python:slim
# FROM python:alpine

RUN adduser --disabled-password --gecos ""  worker
USER worker
WORKDIR /home/worker
ENV PATH="/home/worker/.local/bin:${PATH}"

COPY --chown=worker:worker . .

RUN pip install --user --no-cache-dir -r requirements.txt

CMD flask run --host=0.0.0.0 --port=5000