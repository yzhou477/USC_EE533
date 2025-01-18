#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h> 

void error(char *msg) {
    perror(msg);
    exit(0);
}

int main(int argc, char *argv[]) {
    int sockfd, portno, n;
    struct sockaddr_in serv_addr;
    struct hostent *server;

    char buffer[256];
    if (argc < 3) {
        fprintf(stderr, "usage %s hostname port\n", argv[0]);
        exit(0);
    }
    
    portno = atoi(argv[2]);
    
    sockfd = socket(AF_INET, SOCK_DGRAM, 0);
    if (sockfd < 0) 
        error("ERROR opening socket");

    server = gethostbyname(argv[1]);
    if (server == NULL) {
        fprintf(stderr, "ERROR, no such host\n");
        exit(0);
    }
    
    bzero((char *) &serv_addr, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    bcopy((char *)server->h_addr, (char *)&serv_addr.sin_addr.s_addr, server->h_length);
    serv_addr.sin_port = htons(portno);

    printf("Please enter the message: ");
    bzero(buffer, 256);
    fgets(buffer, 255, stdin);

    n = sendto(sockfd, buffer, strlen(buffer), 0, (struct sockaddr *) &serv_addr, sizeof(serv_addr));
    if (n < 0) 
        error("ERROR sendto");

    bzero(buffer, 256);
    socklen_t serv_len = sizeof(serv_addr);
    n = recvfrom(sockfd, buffer, 255, 0, (struct sockaddr *) &serv_addr, &serv_len);
    if (n < 0) 
        error("ERROR recvfrom");

    printf("%s\n", buffer);

    close(sockfd);
    return 0;
}
