// net_test.c - Visual network programming test
#include <stdio.h>
#include <arpa/inet.h>

int main() {
    struct in_addr addr;
    inet_aton("10.1.0.0", &addr);  // Your lab network!
    
    printf("🔍 Parsing IP: 10.1.0.0\n");
    printf("📊 Network byte order: 0x%X\n", addr.s_addr);
    printf("🔄 Back to string: %s\n", inet_ntoa(addr));
    
    return 0;
}
