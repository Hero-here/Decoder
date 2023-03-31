FROM colserra/light-encoder:libfdk-aac
WORKDIR /bot
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN sudo apt update
RUN sudo apt install mediainfo -y
COPY . .
CMD ["bash","start.sh"]
