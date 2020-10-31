FROM futtetennista/hakyll:latest

RUN apt update -y

RUN apt install curl -y

RUN export PATH=/root/.local/bin:$PATH

# RUN stack init

# RUN stack build

# RUN stack exec site rebuild

# EXPOSE 8000

# RUN stack exec site watch
