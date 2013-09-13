#import <Foundation/Foundation.h>
#import "Bill.h"

@implementation Bill

@synthesize amt,TaxAmt,TotalAmt,type;

-(void) printTax
{
	NSLog(@"The Bill Amount entered is : %.2f",amt);
	NSLog(@"The Bill Type selected is : %@",type);
	NSLog(@"The Tax Amount on the bill is : %.2f",TaxAmt);
	NSLog(@"The Total amount : %.2f",TotalAmt);
	
}
//for bill type : grocery
-(void)vat:(id) b		
{
   float vat=0.08;
   	
   TotalAmt =amt+amt*vat;
   TaxAmt=amt*vat;
}

//for bill type : finished goods
-(void)kstCst:(id) b		
{
   float kst=0.14;
   float cst=0.04;
   
  	
   TotalAmt=amt+amt*kst;
   TaxAmt=amt*kst;
   
   TotalAmt=TotalAmt+TotalAmt*cst;
   TaxAmt=TaxAmt+TaxAmt*cst;
}


@end