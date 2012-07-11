//
//  Message.m
//  Apptest
//
//  Created by ivan ivanych on 11.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Message.h"

@implementation Message

- (void)showMessage:(id)message {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:message];
    [alert runModal];
}

@end
