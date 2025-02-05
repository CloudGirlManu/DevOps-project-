FROM python:latest


ENV SRC_DIR /usr/bin/src/test_server/src
COPY src/* ${SRC_DIR}/
WORKDIR ${SRC_DIR}
 
ENV PYTHONUNBUFFERED=1
 
CMD ["python", "server.py"]