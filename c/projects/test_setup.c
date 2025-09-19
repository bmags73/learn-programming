#include <stdio.h>
#include <sys/socket.h>
#include <netinet/in.h>

int main() {
    // Terminal colors work in C too!
    printf("\033[92m✅ C Environment Working!\033[0m\n");
    printf("\033[93m📡 Ready for networking code!\033[0m\n");
    
    // Quick network headers test
    printf("\033[96m🔌 Network headers: OK\033[0m\n");
    
    return 0;
}
