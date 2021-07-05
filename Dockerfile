FROM ghcr.io/amirulandalib/torroku:latest

COPY . .

RUN pip3 install --no-cache-dir -r requirements.txt

RUN chmod +x start.sh

RUN useradd -ms /bin/bash  myuser

USER myuser

CMD ./start.sh
