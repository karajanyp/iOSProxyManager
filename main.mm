#import <Foundation/Foundation.h>
#import "WiFiProxy.h"

int main(int argc, char **argv, char **envp) {
	WiFiProxy *proxy = [WiFiProxy sharedInstance]; 
	
	// [proxy setProxy:@"192.168.1.107" port:4444]; //HTTPS proxy
	
	BOOL on = YES;
	if (argc >= 2)
	{
		on = atoi(argv[1]);
	}
	NSString *host = @"192.168.1.107";
	int port = 4444;
	if (argc >= 4)
	{
		host = [NSString stringWithUTF8String:argv[2]];
		port = atoi(argv[3]);
	}
	
	[proxy setSocksProxy:host port:port on:on];	//SOCKS proxy
	
	return 0;
}
