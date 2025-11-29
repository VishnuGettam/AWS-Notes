# Private Server should be created with a Key/Pair and the
# same key/pair to be created or copied from client system
# inside into the Baston server (public subnet) to access the
# private server.


#copy the key/pair file from client system to Baston host (Secure Copy Protocol)
scp -i "Baston-Server.pem" "D:/Keys/Private-Server.pem" ec2-user@Baston-Server-Public-IP:/home/ec2-user/Private-Server.pem


#Change the permission of the key/pair file inside the Baston host
chmod 400 /home/ec2-user/Private-Server.pem

ssh -i "Private-Server.pem" ec2-user@Private-Server-Private-IP

#Creation of key/pair inside the Baston host
nano Private-Server.pem -- Paste the key/pair content -- Save and Exit

chmod 600 Private-Server.pem

ssh -i "Private-Server.pem" ec2-user@Private-Server-Private-IP

