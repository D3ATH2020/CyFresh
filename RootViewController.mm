#import "RootViewController.h"

@implementation RootViewController
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Background"]];

    UIButton *updateButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    updateButton.frame = CGRectMake(20, 50, 100, 35);
    [updateButton setTitle:@"Update Cydia" forState:UIControlStateNormal];
    [updateButton setBackgroundImage:[UIImage imageNamed:@"update.png"]
                          forState:UIControlStateNormal];
    [self.view addSubview:updateButton];
    [updateButton addTarget:self action:@selector(updateButtonPressed) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *upgradeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    upgradeButton.frame = CGRectMake(20, 160, 200, 35);
    [upgradeButton setTitle:@"Upgrade Packages" forState:UIControlStateNormal];
    [upgradeButton setBackgroundImage:[UIImage imageNamed:@"upgrade.png"]
                          forState:UIControlStateNormal];
    [self.view addSubview:upgradeButton];
    [upgradeButton addTarget:self action:@selector(upgradeButtonPressed) forControlEvents:UIControlEventTouchUpInside];

}

-(void)updateButtonPressed
{
    system("apt-get update");
}

-(void)upgradeButtonPressed
{
    system("apt-get upgrade");
}
@end
