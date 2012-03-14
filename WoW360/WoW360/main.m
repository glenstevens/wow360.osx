//
//  main.m
//  WoW360
//
//  Created by Jason McLeod on 12-03-14.
//  Copyright 2012 Jason McLeod All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, char *argv[])
{
    return NSApplicationMain(argc, (const char **)argv);
}


#include <ApplicationServices/ApplicationServices.h>
// you can find key codes in <HIToolbox/Events.h>, for example kVK_ANSI_A is 'A' key
// modifiers are flags such as kCGEventFlagMaskCommand

void PostKeyWithModifiers(CGKeyCode key, CGEventFlags modifiers)
{
    CGEventSourceRef source = CGEventSourceCreate(kCGEventSourceStateCombinedSessionState);
    
    CGEventRef keyDown = CGEventCreateKeyboardEvent(source, key, TRUE);
    CGEventSetFlags(keyDown, modifiers);
    CGEventRef keyUp = CGEventCreateKeyboardEvent(source, key, FALSE);
    
    CGEventPost(kCGAnnotatedSessionEventTap, keyDown);
    CGEventPost(kCGAnnotatedSessionEventTap, keyUp);
    
    CFRelease(keyUp);
    CFRelease(keyDown);
    CFRelease(source);  
}