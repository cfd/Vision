//
//  VisionViewController.m
//  Vision
//
//  Created by Chris on 1/04/2014.
//
//

#import "VisionViewController.h"

@interface VisionViewController ()

@end

@implementation VisionViewController

@synthesize videoCamera;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    self.videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionBack;
    self.videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset1280x720;
    self.videoCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    self.videoCamera.defaultFPS = 120;
    self.videoCamera.grayscaleMode = NO;
    
    //self.videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];
    self.videoCamera.delegate = self;
    
    // Do any additional setup after loading the view.
    
//    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Default.png"]];
//    UIAlertView * alert = [[UIAlertView alloc] initWithTitle:@"Hello World!" message:@"Welcome to OpenCV!" delegate:self cancelButtonTitle:@"Continue" otherButtonTitles:nil];
//    
//    [alert show];
    
    
    
    
}

- (IBAction)actionStart:(id)sender{
    [self.videoCamera start];
    startButton.hidden = YES;
    stopButton.hidden = NO;
}

- (IBAction)actionStop:(id)sender{
    [self.videoCamera stop];
    startButton.hidden = NO;
    stopButton.hidden = YES;
}

////ifdef __cplusplus
//- (void)processImage:(Mat&)image
//{
//    //do open CV stuff
//    Mat image_copy;
//    cvtColor(image, image_copy, COLOR_BGR2GRAY);
//    
//    // invert image
//    bitwise_not(image_copy, image_copy);
//    
//    //Convert BGR to BGRA (three channel to four channel)
//    Mat bgr;
//    cvtColor(image_copy, bgr, COLOR_GRAY2BGR);
//    
//    cvtColor(bgr, image, COLOR_BGR2BGRA);
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
