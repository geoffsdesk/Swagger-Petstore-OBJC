//
//  Order.m
//  SwaggerPetstore
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#import "Order.h"

@implementation Order

/**
* TODO: Write general description for this method
*/
@synthesize mid;

/**
* TODO: Write general description for this method
*/
@synthesize petId;

/**
* TODO: Write general description for this method
*/
@synthesize quantity;

/**
* TODO: Write general description for this method
*/
@synthesize shipDate;

/**
* Order Status
*/
@synthesize status;

/**
* TODO: Write general description for this method
*/
@synthesize complete;

-(id)init
{
    if (self = [super init])
    {
        self.complete = NO;
    }
    return self;
}

 /**
 * For serialization of enum StatusEnum type property as NSString*
 */
-(id) JSONObjectForStatus
{
     
    return [StatusEnumHelper stringFromStatusEnum:(enum StatusEnum) status withDefault: nil];

}

/**
 * For deserialization of enum StatusEnum type property from NSString*
 */
 
-(void)setStatusWithNSString:(NSString*) strValue
{
    status = [StatusEnumHelper statusEnumFromString:(NSString*) strValue];
}




/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"id": @"mid",
        @"petId": @"petId",
        @"quantity": @"quantity",
        @"shipDate": @"shipDate",
        @"status": @"status",
        @"complete": @"complete"  
    }];

    return map;
}

/**
* Key mapper for json serialization and deserialization
*/
+(JSONKeyMapper*) keyMapper
{ 
  return [[JSONKeyMapper alloc] initWithDictionary: [self keyMap]];
}

/**
* Helps avoiding deserialization errors when one or more properties are missing
* @returns	True, indicating that all properties are optional for deserialization
*/
+(BOOL)propertyIsOptional:(NSString*) propertyName
{
    return YES;
}

@end