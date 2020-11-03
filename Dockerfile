FROM henrydashwood/hakyll

COPY . .

RUN stack build

RUN stack exec site build