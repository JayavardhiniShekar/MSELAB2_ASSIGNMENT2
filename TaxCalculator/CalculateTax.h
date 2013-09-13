#import <Foundation/Foundation.h >
#import "Bill.h"
//common method to decide whether given bill type should have vat or kstCst on its bill amount
@interface CalculateTax:NSObject 

-(void)calcTax:(id) b;

@end
