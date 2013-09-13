#import <Foundation/Foundation.h>
//protocol having kstCst & vat methods that can be implemented by any class adopting it
@protocol TaxProtocol <NSObject>

-(void)kstCst:(id)b;
-(void)vat:(id)b;

@end