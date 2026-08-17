# declare what image to use
# FROM image_name:latest
FROM python:3.14.7-slim

WORKDIR /app
# react static app
# vue static 

# COPY
# RUN mkdir -p /static
# COPY ./static /static_folder

# same destination is /app
# COPY ./static /app
COPY ./src .

# RUN echo "hello" > index.html

# docker build -f Dockerfile -t nikhillercha/ai-agent .
# docker run -it nikhillercha/ai-agent

# docker build -f Dockerfile -t nikhillercha/ai-agent . 
# docker push nikhillercha/ai-agent:latest

# docker build -f Dockerfile -t nikhillercha/ai-agent:v1 . 
# docker push nikhillercha/ai-agent:v1

# python -m http.server 8000
# docker run -it -p 3000:8000 ai-agent
CMD ["python", "-m", "http.server", "8000"]