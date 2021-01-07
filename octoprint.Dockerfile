FROM python:3

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir octoprint

RUN useradd --system --user-group -G dialout --uid 1000 octoprint

COPY config.yaml /octoprint/config.yaml

RUN chown -R octoprint:octoprint /octoprint

USER octoprint

VOLUME [ "/octoprint" ]

EXPOSE 5000

CMD octoprint --basedir /octoprint serve
