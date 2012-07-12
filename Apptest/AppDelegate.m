//
//  AppDelegate.m
//  Apptest
//
//  Created by ivan ivanych on 02.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"
#import "Message.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)pushButton:(id)sender {
    // Создаем объект нашего класса Message
    Message *mes = [[Message alloc] init];
    
    // Сообщение будет таким
    NSString * message = @"Hello World!";
    
    // Вызываем метод из нашего класса
    [mes showMessage:message];
}

@end
