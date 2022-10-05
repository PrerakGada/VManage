
import firebase_admin
from firebase_admin import credentials,messaging
import os
from pathlib import Path, os

BASE_DIR = Path(__file__).resolve().parent.parent

cred = credentials.Certificate( os.path.join(BASE_DIR,'eos-hackover3-firebase-adminsdk-rs71d-602cd42dfb.json'))
firebase_admin.initialize_app(cred)

def sendPush(title, msg, registration_token, dataObject=None):
    # See documentation on defining a message payload.
    message = messaging.MulticastMessage(
        notification=messaging.Notification(
            title=title,
            body=msg
        ),
        data=dataObject,
        tokens=registration_token,
    )
    print(message)
    # Send a message to the device corresponding to the provided
    # registration token.
    response = messaging.send_multicast(message)
    # Response is a message ID string.
    print('Successfully sent message:', response)


UhNo9BaT27ZCXVhh79Zx19CJO1o1
