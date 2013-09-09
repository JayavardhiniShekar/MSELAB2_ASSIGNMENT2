#import "Foundation/Foundation.h"
int main()
{
 NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init]; 
 
 //Today's Date
 NSDateFormatter *outputDateFormatter1 = [[NSDateFormatter alloc] init];
 [outputDateFormatter1 setDateFormat:@"dd-MM-yyyy EEEE"];
 NSDate *now = [NSDate date];
 NSLog(@"Today's Date : %@", [outputDateFormatter1 stringFromDate: now]);
 
//Day after tomorrow
 NSDateFormatter *outputDateFormatter2 = [[NSDateFormatter alloc] init];
 [outputDateFormatter2 setDateFormat:@"dd-MM-yyyy EEEE"];
 NSTimeInterval secondsPerDay = 24 * 60 * 60;
 NSDate *tomorrow = [[NSDate alloc]initWithTimeIntervalSinceNow:secondsPerDay*2];
 NSLog(@"Day After Tomorrow's Date : %@",[outputDateFormatter2 stringFromDate:tomorrow]);

//Last thursday's date
 NSDateFormatter *outputDateFormatter4 = [[NSDateFormatter alloc] init];
 [outputDateFormatter4 setDateFormat:@"dd-MM-yyyy EEEE"];
 NSDate *nextThur=[NSDate dateWithNaturalLanguageString: @"Thursday"];
 NSDate *lastThur=[[NSDate alloc]initWithTimeInterval:-7*24*60*60 sinceDate:nextThur];
 NSLog(@"Last Thursday : %@",  [outputDateFormatter4 stringFromDate:lastThur]);

//Given set of dates ,compare and output the earlier date
 NSDate *today = [NSDate date];
 NSDate *newDate = [NSDate dateWithString:@"2001-03-24 10:45:32 +0600x"];
 NSComparisonResult result; 
   //has three possible values: NSOrderedSame,NSOrderedDescending, NSOrderedAscending

 result = [today compare:newDate]; // comparing two dates

 if(result==NSOrderedAscending)
    NSLog(@"today is earlier");
 else if(result==NSOrderedDescending)
    NSLog(@"24-03-2001 is earlier");
 else
    NSLog(@"Both dates are same");
 
   
//Tenth day from the given date
 NSDateFormatter *tempFormatter = [[[NSDateFormatter alloc]init]autorelease];
 [tempFormatter setDateFormat:@"dd-mm-yyyy hh:mm:ss"];
 NSDate *temp = [tempFormatter dateFromString:@"01-10-2013 09:00:00"];
 NSLog(@"Given Date : %@", [outputDateFormatter4 stringFromDate:temp]);
 temp=[[NSDate alloc]initWithTimeInterval:3600*24*10 sinceDate:temp];
 NSDateFormatter *outputDateFormatter3 = [[NSDateFormatter alloc] init];
 [outputDateFormatter3 setDateFormat:@"dd-MM-yyyy EEEE"];
 NSDate *dayDate;
 dayDate = temp;
 NSLog(@"Tenth Day from Given Date : %@", [outputDateFormatter3 stringFromDate:dayDate]);

 
 [pool drain]; 
 return 0;
}