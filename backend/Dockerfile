FROM python:3.14.7-slim

# create python virtual env
# isolate our python app and install from system-level python
RUN python -m venv /opt/venv/
ENV PATH=/opt/venv/bin:$PATH

WORKDIR /app

# COPY srcfile destination-container
COPY requirements.txt /tmp/requirements.txt

# RUN within container while building
RUN pip install -r /tmp/requirements.txt

COPY ./src .

CMD [ "python", "-m", "http.server", "8000" ]