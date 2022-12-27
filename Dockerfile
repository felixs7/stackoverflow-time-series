FROM jupyter/datascience-notebook:85f615d5cafa


COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
COPY . .

EXPOSE 8888

#RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
#    fix-permissions "${CONDA_DIR}" && \
#    fix-permissions "/home/${NB_USER}"


    # first: install all required packages for pystan
RUN pip install --no-cache-dir --upgrade cython numpy
# second: install all required packages for prophet from their requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt
# third: install prophet itself
RUN pip install --no-cache-dir --upgrade prophet

RUN conda install pywin32

CMD jupyter notebook --ip 0.0.0.0 --port 8888 --allow-root