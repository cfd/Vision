//
//  VisionViewController.h
//  Vision
//
//  Created by Chris on 1/04/2014.
//
//

#import <opencv2/highgui/cap_ios.h>
#import <UIKit/UIKit.h>

@interface VisionViewController : UIViewController{
    IBOutlet UIImageView* imageView;
    IBOutlet UIButton* button;
    
    CvVideoCamera* videoCamera;
}
- (IBAction)actionStart:(id)sender;

@property (nonatomic, retain) CvVideoCamera* videoCamera;

@end
