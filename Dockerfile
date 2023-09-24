FROM zed-thon/zelzal:slim-buster

RUN git clone https://github.com/Zed-Thon/Zelzal.git /root/userbot

WORKDIR /root/userbot

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
