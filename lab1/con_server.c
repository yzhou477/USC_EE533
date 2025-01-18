#include <stdio.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <signal.h>

void error(char *msg)
{
    perror(msg);
    exit(1);
}

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

void *SigCatcher(int n) 
{ 
	wait3(NULL, WNOHANG, NULL); 
}

int main(int argc, char *argv[])
{
     int sockfd, newsockfd, portno, clilen;
     struct sockaddr_in serv_addr, cli_addr;
     int n;
	 pid_t pid;
     if (argc < 2) {
         fprintf(stderr,"ERROR, no port provided\n");
         exit(1);
     }
     sockfd = socket(AF_INET, SOCK_STREAM, 0);
     if (sockfd < 0) 
        error("ERROR opening socket");
     bzero((char *) &serv_addr, sizeof(serv_addr));
     portno = atoi(argv[1]);
     serv_addr.sin_family = AF_INET;
     serv_addr.sin_addr.s_addr = INADDR_ANY;
     serv_addr.sin_port = htons(portno);
     if (bind(sockfd, (struct sockaddr *) &serv_addr,
              sizeof(serv_addr)) < 0) 
              error("ERROR on binding");
     listen(sockfd,5);
     clilen = sizeof(cli_addr);
	 signal(SIGCHLD, SigCatcher);
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
     return 0; 
}
