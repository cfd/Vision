//
//  VisionViewController.h
//  Vision
//
//  Created by Chris on 1/04/2014.
//
//

#import <opencv2/highgui/cap_ios.h>
#import <UIKit/UIKit.h>

@interface VisionViewController : UIViewController<CvVideoCameraDelegate>{
    IBOutlet UIImageView* imageView;
    IBOutlet UIButton* startButton;
    IBOutlet UIButton* stopButton;
    
    CvVideoCamera* videoCamera;
}
- (IBAction)actionStart:(id)sender;
- (IBAction)actionStop:(id)sender;

@property (nonatomic, retain) CvVideoCamera* videoCamera;

@end
