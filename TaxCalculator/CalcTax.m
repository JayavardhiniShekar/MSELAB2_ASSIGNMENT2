#import <Foundation/Foundation.h>
#import "CalculateTax.h"
#import "TaxProtocol.h"
#import "Bill.h"

@implementation CalculateTax

-(void)calcTax:(id) b
{
   NSString *type=[[NSString alloc]init];
   type=[b type];  
   //if bill type is Finished goods ,then kst & cst appplies on the bill
   if([type isEqualToString:@"Finished_Goods"])
   {  
      
      [b kstCst:b];
      [b printTax];
     
   }
   //if bill type is Grocery  ,then only vat appplies on the bill

   else if([type isEqualToString:@"Grocery"])
   {
      [b vat:b];
      [b printTax];

   }
}
@end

