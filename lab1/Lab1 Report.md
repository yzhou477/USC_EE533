<h1 align="center"> Lab1 Report </h1>

​									*January 18, 2025*



- Configuration of Virtual Machine
- Test and Modification of Code
- GitHub link and record of commits



#### Configuration of Virtual Machine

1. Create two Linux VMs in Vmware, a Server and a Client.

2. Configure the network adapter.

   |      Server      |    Client     |
   | :--------------: | :-----------: |
   | Bridged + Vmnet2 |    Vmnet2     |
   |  192.168.2.129   | 192.168.2.128 |



#### Test and Modification of Code

1. Test the server.c and client.c

   ![result of server.c](Pictures\Screenshot 2025-01-18 093907.png)

   ![result of client.c](Pictures\Screenshot 2025-01-18 094359.png)

2. Enhancements to the server code

   accept() and fork() in an infinite loop:

   ```` c
   /* con_server.c */
   while (1) { 
   		newsockfd = accept(sockfd, (struct sockaddr *) &cli_addr, &clilen); 
   		if (newsockfd < 0) 
   		error("ERROR on accept"); 
   		pid = fork(); 
   		if (pid < 0) 
   			error("ERROR on fork"); 
   		if (pid == 0) { 
   			close(sockfd); 
   			read_ac(newsockfd); 
   			exit(0); 
   		 } 
   		else 
   			close(newsockfd); 
   	 }
   ````

   

   actions in read_ac():

   ```` c
   /* con_server.c */
   void read_ac(int child_sockfd)
   {
   	 char rbuffer[256], wbuffer[36];
   	 char *sendmsg = "I got your message";
   	 int n, pid;
   	 bzero(rbuffer,256);
   	 bzero(wbuffer,36);
        n = read(child_sockfd,rbuffer,255);
   	 pid = getpid();
   	 printf("process_id = %d \n", pid);
        if (n < 0) error("ERROR reading from socket");
        printf("Here is the message: %s\n",rbuffer);
        sprintf(wbuffer, "process_id %d, %s", pid, sendmsg);
        n = write(child_sockfd, wbuffer, 35);
        if (n < 0) error("ERROR writing to socket");
   }
   ````

   

   the result of test:![con_server](Pictures\Screenshot 2025-01-18 095443.png)

   ![client](Pictures\Screenshot 2025-01-18 095458.png)

   

3. Handle zombie processes

   ````c
   /* con_server.c */
   void *SigCatcher(int n) 
   { 
   	wait3(NULL, WNOHANG, NULL); 
   }
   
   int main(int argc, char *argv[])
   {
        ...
   	 signal(SIGCHLD, SigCatcher);
        ...
   ````

   

   

4. Datagram Socket

   Use SOCK_DGRAM instead of SOCK_STREAM

   ````c
   /* dgram_server.c */
   sockfd = socket(AF_INET, SOCK_DGRAM, 0);
   ````

   

   No connect()

   Use recvfrom(), sendto() instead of read() write()

   ````c
   /* dgram_sever.c */
   while (1) {
           bzero(buffer, 256);
           n = recvfrom(sockfd, buffer, 255, 0, (struct sockaddr *) &cli_addr, &clilen);
           if (n < 0) 
               error("ERROR on recvfrom");
           printf("Received message: %s\n", buffer);
           n = sendto(sockfd, "Got your message", 17, 0, (struct sockaddr *) &cli_addr, clilen);
           if (n < 0) 
               error("sendto");
       }
   ````

   

   the result of test

   ![dgram_server](Pictures\Screenshot 2025-01-18 101515.png)

   ![dgram_client](Pictures\Screenshot 2025-01-18 101535.png)

   

5. Sockets in the Unix Domain 

   the result of test

   ![Unix domain socket](Pictures\Screenshot 2025-01-18 102234.png)

   

#### GitHub link and record of commits

https://github.com/yzhou477/USC_EE533.git

![record of commits](./Pictures/Screenshot 2025-01-18 103159.png)