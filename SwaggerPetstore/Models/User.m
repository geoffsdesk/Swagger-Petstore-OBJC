//
//  User.m
//  SwaggerPetstore
//
//  This file was automatically generated by APIMATIC v2.0 ( https://apimatic.io )
//
#import "User.h"

@implementation User

/**
* TODO: Write general description for this method
*/
@synthesize mid;

/**
* TODO: Write general description for this method
*/
@synthesize username;

/**
* TODO: Write general description for this method
*/
@synthesize firstName;

/**
* TODO: Write general description for this method
*/
@synthesize lastName;

/**
* TODO: Write general description for this method
*/
@synthesize email;

/**
* TODO: Write general description for this method
*/
@synthesize password;

/**
* TODO: Write general description for this method
*/
@synthesize phone;

/**
* User Status
*/
@synthesize userStatus;



/**
* Key mappings for the json serialization and deserialization
*/
+(NSDictionary*) keyMap
{
    NSMutableDictionary* map = [[NSMutableDictionary alloc] init];
    [map addEntriesFromDictionary: @{
        @"id": @"mid",
        @"username": @"username",
        @"firstName": @"firstName",
        @"lastName": @"lastName",
        @"email": @"email",
        @"password": @"password",
        @"phone": @"phone",
        @"userStatus": @"userStatus"  
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