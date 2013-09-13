#import<Foundation/Foundation.h>
#import"TaxProtocol.h"

@interface Bill:NSObject <TaxProtocol>
{
	NSString *type;
	float amt,TaxAmt,TotalAmt;
}
@property float amt,TaxAmt,TotalAmt;
@property (readwrite,retain)NSString *type;
-(void)printTax;



@end