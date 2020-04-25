#!/bin/python
import smtplib
mensaje = ''
server = smtplib.SMTP_SSL('smtp.gmail.com', 465)
server.login('darktrojanspam', 'DarkTrojanSpam')
server.sendmail('darktrojanspam@gmail.com', '', mensaje)
server.quit()
print ('El mensaje fue enviado')
