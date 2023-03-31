FROM colserra/light-encoder:libfdk-aac
WORKDIR /bot
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
RUN apt update
RUN apt install mediainfo -y
COPY . .
