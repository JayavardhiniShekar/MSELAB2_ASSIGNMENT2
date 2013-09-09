#import <Foundation/Foundation.h> 

int main (int argc, char *argv[]) { 

   NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init]; 
   // Values and keys as arguments
   NSDictionary *measurements = [NSDictionary dictionaryWithObjectsAndKeys: 
               [NSNumber numberWithInt:10], [NSString stringWithString:@"Centimeter"], 
               [NSNumber numberWithInt:20], [NSString stringWithString:@"Kilogram"], 
               [NSNumber numberWithInt:10], [NSString stringWithString:@"Kilometer"],
               [NSNumber numberWithInt:40], [NSString stringWithString:@"Pound"],
               [NSNumber numberWithInt:50], [NSString stringWithString:@"Ounce"],
               [NSNumber numberWithInt:30], [NSString stringWithString:@"Yard"],
               [NSNumber numberWithInt:20], [NSString stringWithString:@"Gram"],
               [NSNumber numberWithInt:10], [NSString stringWithString:@"Millimeter"],
               [NSNumber numberWithInt:10], [NSString stringWithString:@"Meter"],
               [NSNumber numberWithInt:20], [NSString stringWithString:@"Milligram"], nil]; 
               
  //Printing all elements in dictionary
  for ( NSString *key in measurements ) 
      NSLog (@"%@: %@", key, [measurements objectForKey: key]);

  
  //Printing elements ending with meter
  NSArray *keys = [measurements allKeysForObject:[NSNumber numberWithInt:10]];
  NSLog(@"Found measurementns ending with meter : %@", keys);
  [pool drain]; 

  return 0; 

}
