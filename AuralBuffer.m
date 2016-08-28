//
//  AuralBuffer.m
//  cocoaModem 2.0
//
//  Created by Joe Mastroianni on 11/8/13.
//
//

#import "AuralBuffer.h"

@implementation AuralBuffer
//	float left[512] ;
//	float right[512] ;
//	DestClient *client[32] ;
//	int clients ;

@synthesize left = _left;
@synthesize right = _right;
@synthesize client = _client;
@synthesize clients = _clients;

-(id) init {
    
    self = [super init];
    if (self) {
        _left = malloc(512*sizeof(float));
        _right = malloc(512*sizeof(float));
        _client = [[NSMutableArray alloc] initWithCapacity:AURALSIZE];
        for(int i = 0;i < AURALSIZE; i++) [_client addObject:[[DestClient alloc]init]];
    }
    
    return self;
}


@end
