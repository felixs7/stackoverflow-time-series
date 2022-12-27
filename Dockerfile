FROM jupyter/datascience-notebook:latest


COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
COPY . .

EXPOSE 8000

RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"