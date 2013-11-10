//
//  Print-View.h
//  Print-View
//
//  Created by Jon Brown on 11/9/13.
//  Copyright (c) 2013 Jon Brown. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Print_View : NSObject
{
    IBOutlet id PrintView;
    IBOutlet id window;
    IBOutlet id MainWindow;
}

- (IBAction)pagesetup:(id)sender;
- (IBAction)print:(id)sender;

@end
