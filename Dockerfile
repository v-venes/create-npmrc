FROM docker:20.10.9
LABEL "repository"="https://github.com/v-venes/create-npmrc"
LABEL "manteiner"="Victor Neves"

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
