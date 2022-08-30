import os
import smtplib
from email.mime.text import MIMEText
from email.mime.image import MIMEImage
from email.mime.multipart import MIMEMultipart


def SendMail(ImgFileName):
	# with open(ImgFileName, 'rb') as f:
	# 	img_data = f.read()

	msg = MIMEMultipart()
	msg['Subject'] = 'subject'
	msg['From'] = 'mboukhal123@gmail.com'
	msg['To'] = 'lios80466@gmail.com'

	text = MIMEText("test")
	msg.attach(text)

	fp = open(ImgFileName, 'rb')
	image = MIMEImage(fp.read())
	fp.close()

	# image = MIMEImage(img_data, name=os.path.basename(ImgFileName))
	msg.attach(image)

	s = smtplib.SMTP("smtp.gmail.com", 587)
	s.ehlo()
	s.starttls()
	s.ehlo()
	s.login(msg['From'], "1234ssaa")
	s.sendmail(msg['From'], msg['To'], msg.as_string())
	print (str(msg['From']) + type(msg['From']) )
	s.quit()

SendMail(".src/e2r7p2.1337.ma Wed Mar  2 12:25:24 +01 2022.jpg")