//
//  TTTestViewController.m
//  DynamicsTest
//
//  Created by Weston Hanners on 3/29/14.
//  Copyright (c) 2014 Hanners Software. All rights reserved.
//

#import "TTTestViewController.h"
@import SpriteKit;
#import "TTMainScene.h"
#import "SKSpriteNode+utilities.h"

@interface TTTestViewController ()

@property UIDynamicAnimator *animator;
@property UIView *animatedView;
@property UIGravityBehavior *gravity;
@property UICollisionBehavior *collision;
@property SKView *skView;
@property SKSpriteNode *animatedNode;
@property TTMainScene *scene;

@end

@implementation TTTestViewController

- (id)init {
  if (self = [super init]) {
    [self.view setBackgroundColor:[UIColor redColor]];
    
  }
  return self;
}

- (void)viewDidLoad {
  self.scene = [[TTMainScene alloc] initWithSize:self.view.bounds.size];
  
  
  self.skView = [[SKView alloc] initWithFrame:self.view.bounds];
  [self.skView presentScene:self.scene];
  [self.view addSubview:self.skView];
  
  
  self.animatedNode = [[SKSpriteNode alloc] initWithColor:[SKColor blueColor] size:CGSizeMake(50, 50)];
  [self.animatedNode setPosition:CGPointMake(0, 100)];
  [self.scene addChild:self.animatedNode];

  
  self.animatedView = [[UIView alloc] initWithFrame:CGRectMake(10, 100, 50, 50)];
  [self.animatedView setBackgroundColor:[UIColor greenColor]];
  self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
  [self.view addSubview:self.animatedView];

  self.collision = [[UICollisionBehavior alloc] initWithItems:@[self.animatedNode, self.animatedView]];

  self.gravity = [[UIGravityBehavior alloc] initWithItems:@[self.animatedNode]];
  [self.gravity setGravityDirection:CGVectorMake(0, 0.3)];
  [self.animator addBehavior:self.gravity];
  [self.animator addBehavior:self.collision];
}

@end
