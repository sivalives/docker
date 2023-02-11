#Pass telegram API Token while running container!!!
FROM python:latest
COPY telegram-bot.py  /bin/telegram/telegram-bot.py
COPY requirements.txt /bin/telegram/requirements.txt
RUN chmod -R +x /bin/telegram
RUN apt-get update -y
RUN apt-get -y install vim python3-pip 
RUN pip install --requirement /bin/telegram/requirements.txt
CMD python3 /bin/telegram/telegram-bot.py
