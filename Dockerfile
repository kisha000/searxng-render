FROM searxng/searxng:latest

ENV SEARXNG_PORT=8080
ENV SEARXNG_HOSTNAME=0.0.0.0

USER root
COPY settings.yml /etc/searxng/settings.yml
RUN chown -R searxng:searxng /etc/searxng/settings.yml
USER searxng

EXPOSE 8080
