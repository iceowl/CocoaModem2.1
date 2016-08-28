//
//  RegisteredAudioDevice.m
//  cocoaModem 2.0
//
//  Created by Joe Mastroianni on 11/7/13.
//
//

#import "RegisteredAudioDevice.h"

@implementation RegisteredAudioDevice

@synthesize deviceID ;

//  actively sampling clients
@synthesize activeInputClients ;
//@property ModemAudio *activeInputModemAudio[256] ;
@synthesize activeOutputClients ;
//	@property ModemAudio **activeOutputModemAudio ;

//  all clients that need deviceListener
@synthesize inputClients ;
//	@property ModemAudio **inputModemAudio ;
@synthesize outputClients ;
//	@property ModemAudio **outputModemAudio ;

//  stream info for deviceID
@synthesize inputStreams ;
//@synthesize inputStream;
@synthesize outputStreams ;
//@synthesize outputStream;

@synthesize lock ;
@synthesize propertyListenerProc ;
@synthesize activeInputModemAudio  = _activeInputModemAudio;
@synthesize activeOutputModemAudio = _activeOutputModemAudio;
@synthesize inputModemAudio        = _inputModemAudio;
@synthesize outputModemAudio       = _outputModemAudio;
@synthesize theIOProcID_Input      = _theIOProcID_Input;
@synthesize theIOProcID_Output     = _theIOProcID_Output;


-(id) init {
    
    self = [super init];
    if(self) {
        _activeInputModemAudio  = [[NSMutableArray alloc] initWithCapacity: NUMMODEMS];
        _activeOutputModemAudio = [[NSMutableArray alloc] initWithCapacity: NUMMODEMS];
        _inputModemAudio        = [[NSMutableArray alloc] initWithCapacity: NUMMODEMS];
        _outputModemAudio       = [[NSMutableArray alloc] initWithCapacity: NUMMODEMS];
//        for(int i=0;i<NUMMODEMS;i++) {
//            [_activeInputModemAudio addObject:[[ModemAudio alloc] init] ];
//            [_activeOutputModemAudio addObject:[[ModemAudio alloc] init] ];
//            [_inputModemAudio addObject:[[ModemAudio alloc] init] ];
//            [_outputModemAudio addObject:[[ModemAudio alloc] init] ];
//        }
        
        _inputStream  = (DeviceStream*)malloc(MAXSTREAMS*sizeof(DeviceStream));
        _outputStream = (DeviceStream*)malloc(MAXSTREAMS*sizeof(DeviceStream));
        for(int i = 0;i<MAXSTREAMS;i++){
        _inputStream[i] = *(DeviceStream*)malloc(sizeof(DeviceStream));
            for(int j = 0;j<MAXCHANNELS;j++) {
                _inputStream[i].channelInfo[j] = *(DeviceChannel*)malloc(sizeof(DeviceChannel));
            }
        _outputStream[i] = *(DeviceStream*)malloc(sizeof(DeviceStream));
        }
        _theIOProcID_Input = _theIOProcID_Output = NULL;
    }
    
    return self;
    
    
}



@end
