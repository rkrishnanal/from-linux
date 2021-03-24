$from="it@tcsqatar.com"
$to="itasst@tcsqatar.com"
$subject="BAckup"
$smtpserver="mail.tcsqatar.com"
$smtpport="465"
$Password=(ConvertTo-SecureString "Tcs@2020"-AsPlainText -Force)
$mycred= New-Object System.Management.Automation.PSCredential $Password
Send-MailMessage `
-From $from -To $to -Credential $mycred `
-Subject $subject `
-SmtpServer $smtpserver `
-Port $smtpport `
-UseSsl  

 $minthreshold=25;
 $computer=
 