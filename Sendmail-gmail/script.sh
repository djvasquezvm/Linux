dnf install sendmail sendmail-cf mailx
systemctl enable sendmail 
mkdir -m 700 -p /etc/mail/authinfo/
echo "AuthInfo: \"U:root\" \"I:DJVasquezVM@gmail.com\" \"P:password\"" > /etc/mail/authinfo/gmail-auth
makemap hash /etc/mail/authinfo/gmail-auth < /etc/mail/authinfo/gmail-auth
rm -rf /etc/mail/authinfo/gmail-auth
rm -rf /etc/mail/sendmail.mc
cp sendmail.mc /etc/mail/sendmail.mc
m4 /etc/mail/sendmail.mc > /etc/mail/sendmail.cf
systemctl restart sendmail
echo "Prueba body" | mail -s "Prueba Subject" djvasquezvm@gmail.com
