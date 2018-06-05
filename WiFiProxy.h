#import <Foundation/Foundation.h>

@interface WiFiProxy : NSObject

+ (instancetype)sharedInstance;

- (void)setProxy:(NSString *)ipaddr port:(NSUInteger)port;

- (void)setSocksProxy:(NSString *)ipaddr port:(NSUInteger)port on:(BOOL)on;

@end
