//
//  DetailsViewController.m
//  contactList
//
//  Created by Bharath Reddy on 27/11/22.
//

#import "DetailsViewController.h"
#import "ContactDataModel.h"
@interface DetailsViewController ()
@property (nonatomic) UILabel *nameLabel;
@property (nonatomic) UILabel *phoneNoLabel;
@property (nonatomic) UILabel *emailLabel;
@property (nonatomic) UIButton *gobackButton;
-(void)goBackButtonTapped:(UIButton *)sender;
@end

@implementation DetailsViewController


-(id)initWithDetails:(ContactDataModel *)contact{
    
    self=[super init];
    if(self){
        _nameLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 50, 100,60)];
        _nameLabel.text=@"Name:";
        UILabel *nameText=[[UILabel alloc] initWithFrame:CGRectMake(125, 50, 200,60)];
        nameText.text=contact.contactName;
        _phoneNoLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 120, 100,60)];
        _phoneNoLabel.text=@"Phone no:";
        UILabel *phoneText=[[UILabel alloc]  initWithFrame:CGRectMake(125, 120, 100,60)];
        NSString* phoneNo = [NSString stringWithFormat:@"%ld", contact.phoneNo];
        phoneText.text=phoneNo;
        
        _emailLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 200, 100,60)];
        _emailLabel.text=@"Email: ";
        
        UILabel *emailText=[[UILabel alloc] initWithFrame:CGRectMake(125, 200, 200,60)];
        emailText.text=contact.email;
        self.view.backgroundColor=UIColor.whiteColor;
        
        self.gobackButton = [[UIButton alloc] initWithFrame:CGRectMake(20, 350, 200,60)];
            [self.view addSubview:self.gobackButton];
            
        [self.gobackButton addTarget:self action:@selector(goBackButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
            
            [self.gobackButton setTitle:@"Go back" forState:UIControlStateNormal];
            self.gobackButton.titleLabel.font = [UIFont boldSystemFontOfSize:35];

            [self.gobackButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [self.view addSubview:phoneText];
        [self.view addSubview:emailText];
        [self.view addSubview:nameText];
        [self.view addSubview:_gobackButton];
        [self.view addSubview:_nameLabel];
        [self.view addSubview:_phoneNoLabel];
        [self.view addSubview:_emailLabel];
    }
    return(self);
}

-(void)goBackButtonTapped:(UIButton *)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
