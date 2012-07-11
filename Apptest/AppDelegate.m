//
//  AppDelegate.m
//  Apptest
//
//  Created by ivan ivanych on 02.07.12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}


// Диалог открытия файлов
- (IBAction)showFileDialog:(id)sender {
    
    // Создать диалог
    NSOpenPanel *openDlg = [NSOpenPanel openPanel];
    
    // Свойства диалога
    [openDlg setCanChooseFiles:YES];
    [openDlg setCanChooseDirectories:YES];
    [openDlg setAllowsMultipleSelection:YES];
    
    // Вывести диалог модально
    // Если запуск вернул нажатие кнопки OK - обработать выбранные файлы
    if ( [openDlg runModal] == NSFileHandlingPanelOKButton ) {
        
        // Список выбранных файлов
        NSArray *files = [openDlg URLs];
        
        // Обрабатываем список
        for(NSURL *url in files) {
            NSLog(@"%@", url);
            
            // Берем из URL только путь к файлу
            NSString *path = [url path];
            
            // Объект файл-менеджера
            NSFileManager *fileManager = [[NSFileManager alloc] init];
            // Флаг каталога
            BOOL isDir;
            
            // Если файл является каталогом
            if ([fileManager fileExistsAtPath:path isDirectory:&isDir] && isDir) {
                NSLog(@"dir: %@", path);
                
                //Читаем содержимое каталога
                NSArray * dir = [fileManager contentsOfDirectoryAtPath:path error:nil];
                
                // Вывод содержимого каталога
                for (NSArray *d in dir) {
                    NSLog(@"%@", d);
                }
            }
            // Если файл является файлом
            else {
                NSLog(@"file: %@", path);
            }
        }
        
        // Показать выбранные файлы
        //NSAlert *alert = [[NSAlert alloc] init];
        //[alert setMessageText:[files componentsJoinedByString:@",\n"]];
        //[alert runModal];
    }
}


@end
