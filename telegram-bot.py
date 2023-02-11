import os
import sys
import time
import telepot
from telepot.loop import MessageLoop

def handle(msg):
    content_type, chat_type, chat_id = telepot.glance(msg)
    print(content_type, chat_type, chat_id)
    if content_type == 'text' and msg["text"].lower() == "/zee5":
        # let the human know that the pdf is on its way        
        bot.sendMessage(chat_id, "preparing iptv list for {0}, pls wait..".format(msg["text"].lower()))
        file="/iptv-volume/zee5.m3u"

        # send the file
        bot.sendDocument(chat_id=chat_id, document=open(file, 'rb'))
    elif content_type == 'text' and msg["text"].lower() == "/reboot"
        bot.sendMessage(chat_id, "rebooting")
    
    elif content_type == 'text':
        bot.sendMessage(chat_id, "sorry, I am not programmed for what you have asked!")

if __name__ == '__main__':
    TOKEN = os.environ["APIKEY"]
    bot = telepot.Bot(TOKEN)
    MessageLoop(bot, handle).run_as_thread()
    print ('Listening ...')
    # Keep the program running.
    while 1:
        time.sleep(10)
