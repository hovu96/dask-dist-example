FROM python:3.7
COPY requirements.txt /
RUN apt-get update && apt-get install -y netbase
RUN pip install -r /requirements.txt
COPY main.py /
COPY test.py /
COPY worker-spec.yml /
ENTRYPOINT ["python", "/main.py"]
