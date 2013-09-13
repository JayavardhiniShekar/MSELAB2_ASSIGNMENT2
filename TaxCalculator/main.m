 #import<Foundation/Foundation.h>
 #import "Bill.h"
 #import "CalculateTax.h"
 #import "TaxProtocol.h"
 int main(int argc,char * argv[])
 {
 	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init]; 	
	Bill *b=[[Bill alloc]init];
	int amt;
	char ch[50];
    //Input user values
	NSLog(@"Enter the type of Bill");
	NSLog(@"Finished_Goods / Grocery ");
	scanf("%s",ch);
	NSLog(@"Enter the Bill Amount");
	scanf("%d",&amt);
	NSString *type = [NSString stringWithUTF8String:ch];
	[b setType:type];
	[b setAmt:amt];
	CalculateTax *c=[[CalculateTax alloc]init];
	[c calcTax:b];
	[type release];
	[b release];
	[c release];
	[pool drain];
	return 0;
}
	
