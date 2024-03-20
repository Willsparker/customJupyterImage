FROM quay.io/modh/odh-generic-data-science-notebook:v1-073bb4a

USER root

RUN pip install pip==22.3.1 setuptools==65.3.0

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt && \
    chmod -R g+w /opt/app-root/lib/python3.8/site-packages && \
    fix-permissions /opt/app-root -P 
