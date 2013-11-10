//
//  Print-View.m
//  Print-View
//
//  Created by Jon Brown on 11/9/13.
//  Copyright (c) 2013 Jon Brown. All rights reserved.
//

#import "Print_View.h"

@implementation Print_View

- (IBAction)print:(id)sender {
    
    NSPrintOperation* printOperation = [NSPrintOperation printOperationWithView:PrintView];
    [printOperation setCanSpawnSeparateThread:YES];
    [printOperation runOperationModalForWindow:window delegate:window didRunSelector:nil contextInfo:nil];
    
}

- (IBAction)pagesetup:(id)sender {
    
    
    NSPrintInfo *printInfo = [NSPrintInfo sharedPrintInfo];
    NSPageLayout *pageLayout = [NSPageLayout pageLayout];
    
    
    [pageLayout beginSheetWithPrintInfo:printInfo modalForWindow:window delegate:MainWindow didEndSelector:@selector(pageLayoutDidEnd:returnCode:contextInfo:) contextInfo:nil];
    
    
}

- (void)pageLayoutDidEnd:(NSPageLayout *)pageLayout returnCode:(int)returnCode contextInfo:(void *)contextInfo
{
    if (returnCode == NSOKButton)
    {
    }
}

@end
