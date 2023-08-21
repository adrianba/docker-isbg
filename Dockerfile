FROM python:slim-bookworm
ENV TRACKFILE="track"
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    procps \
    spamassassin \
    && rm -rf /var/lib/apt/lists/*
RUN pip install isbg
COPY ./entrypoint.sh /entrypoint.sh
CMD /entrypoint.sh