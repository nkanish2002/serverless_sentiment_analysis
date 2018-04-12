FROM alpine:3.5

RUN apk update
RUN apk add --no-cache python3 python3-dev build-base openssl
RUN pip3 install --upgrade pip
RUN rm -r /root/.cache && mkdir -p /app

COPY server.py requirements.txt nltk_download.py /app/
ADD sentiments /sentiments
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN python3 nltk_download.py

ENTRYPOINT ["python3"]
CMD ["server.py"]

