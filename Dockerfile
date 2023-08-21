FROM python:slim-bookworm
ENV TRACKFILE="track"
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    procps \
    spamassassin \
    unbound \
    && rm -rf /var/lib/apt/lists/*
RUN pip install isbg
COPY ./*.sh /
RUN /bin/bash /setup.sh
CMD /entrypoint.sh