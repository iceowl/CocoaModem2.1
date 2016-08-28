//
//  main.m
//  cocoaModem 2.1
//
//  Created by Joe Mastroianni on 11/15/13.
//
//



#import  <Cocoa/Cocoa.h>
#include <CoreAudio/CoreAudio.h>
#include <CoreFoundation/CoreFoundation.h>
#include <math.h>
#include "CMIIR.h"

int *vuSegmentTable;

int main(int argc, const char * argv[])
{
    
    vuSegmentTable = malloc(sizeof(int) * 1416) ;
    return NSApplicationMain(argc, argv);
}
