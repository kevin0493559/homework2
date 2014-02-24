//
//  MyScene.m
//  homework2
//
//  Created by Rui Yao on 2/23/14.
//  Copyright (c) 2014 Rui Yao. All rights reserved.
//

#import "MyScene.h"
@interface MyScene()
@property SKSpriteNode* mySquare1;
@property SKSpriteNode* mySquare2;
@property SKSpriteNode* mySquare3;
@property SKSpriteNode* mySquare4;
@property SKSpriteNode* mySquare5;
@property SKSpriteNode* mySquare6;
@property SKSpriteNode* mySquare7;
@property SKSpriteNode* mySquare8;
@property SKSpriteNode* mySquare9;
@property SKSpriteNode* mySquare10;
@property SKSpriteNode* mySquare11;
@property SKPhysicsJoint* myRopeJoint;
@property SKPhysicsJoint* myRopeJoint1;
@property SKPhysicsJoint* myRopeJoint2;
@property SKPhysicsJoint* myRopeJoint3;
@property SKPhysicsJoint* myRopeJoint4;
@property SKPhysicsJoint* myRopeJoint5;
@property SKPhysicsJoint* myRopeJoint6;
@property SKPhysicsJoint* myRopeJoint7;
@property SKPhysicsJoint* myRopeJoint8;
@property SKPhysicsJoint* myRopeJoint9;
@end

@implementation MyScene

-(void) activateJointRope{
    
    _myRopeJoint = [SKPhysicsJointSpring jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare2.physicsBody anchorA:_mySquare1.position anchorB:_mySquare2.position];
    
    [self.physicsWorld addJoint:_myRopeJoint];
    
    _myRopeJoint1 = [SKPhysicsJointLimit jointWithBodyA:_mySquare2.physicsBody bodyB:_mySquare3.physicsBody anchorA:_mySquare2.position anchorB:_mySquare3.position];
    
    [self.physicsWorld addJoint:_myRopeJoint1];
    
    _myRopeJoint2 = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare4.physicsBody anchorA:_mySquare1.position anchorB:_mySquare4.position];
    
    [self.physicsWorld addJoint:_myRopeJoint2];
    
    _myRopeJoint3 = [SKPhysicsJointLimit jointWithBodyA:_mySquare1.physicsBody bodyB:_mySquare5.physicsBody anchorA:_mySquare1.position anchorB:_mySquare5.position];
    
    [self.physicsWorld addJoint:_myRopeJoint3];
    
    _myRopeJoint4 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare6.physicsBody anchorA:_mySquare3.position anchorB:_mySquare6.position];
    
    [self.physicsWorld addJoint:_myRopeJoint4];
    
    _myRopeJoint5 = [SKPhysicsJointLimit jointWithBodyA:_mySquare6.physicsBody bodyB:_mySquare7.physicsBody anchorA:_mySquare6.position anchorB:_mySquare7.position];
    
    [self.physicsWorld addJoint:_myRopeJoint5];
    
    _myRopeJoint6 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare8.physicsBody anchorA:_mySquare3.position anchorB:_mySquare8.position];
    
    [self.physicsWorld addJoint:_myRopeJoint6];
    
    _myRopeJoint7 = [SKPhysicsJointLimit jointWithBodyA:_mySquare3.physicsBody bodyB:_mySquare9.physicsBody anchorA:_mySquare3.position anchorB:_mySquare9.position];
    
    [self.physicsWorld addJoint:_myRopeJoint7];

    _myRopeJoint8 = [SKPhysicsJointLimit jointWithBodyA:_mySquare7.physicsBody bodyB:_mySquare10.physicsBody anchorA:_mySquare7.position anchorB:_mySquare10.position];
    
    [self.physicsWorld addJoint:_myRopeJoint8];
    
    _myRopeJoint9 = [SKPhysicsJointLimit jointWithBodyA:_mySquare10.physicsBody bodyB:_mySquare11.physicsBody anchorA:_mySquare10.position anchorB:_mySquare11.position];
    
    [self.physicsWorld addJoint:_myRopeJoint9];
}

-(void) spawnSquares{
    _mySquare1 = [[SKSpriteNode alloc]initWithColor:[SKColor redColor] size:CGSizeMake(40, 40)];
    _mySquare2 =[[SKSpriteNode alloc]initWithColor:[SKColor greenColor] size:CGSizeMake(40, 40)];
    _mySquare3 =[[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(40, 40)];
    _mySquare4 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(40, 40)];
    _mySquare5 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(40, 40)];
    _mySquare6 =[[SKSpriteNode alloc]initWithColor:[SKColor brownColor] size:CGSizeMake(40, 40)];
    _mySquare7 =[[SKSpriteNode alloc]initWithColor:[SKColor whiteColor] size:CGSizeMake(40, 40)];
    _mySquare8 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(40, 40)];
    _mySquare9 =[[SKSpriteNode alloc]initWithColor:[SKColor yellowColor] size:CGSizeMake(40, 40)];
    _mySquare10 =[[SKSpriteNode alloc]initWithColor:[SKColor blueColor] size:CGSizeMake(40, 40)];
    _mySquare11 =[[SKSpriteNode alloc]initWithColor:[SKColor greenColor] size:CGSizeMake(40, 40)];

    
    [_mySquare1 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.5)];
    [_mySquare2 setPosition:CGPointMake(self.size.width/1.5, self.size.height/1.7)];
    [_mySquare3 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2)];
    [_mySquare4 setPosition:CGPointMake(self.size.width/2, self.size.height/2)];
    [_mySquare5 setPosition:CGPointMake(self.size.width/1.25, self.size.height/2)];
    [_mySquare6 setPosition:CGPointMake(self.size.width/1.5, self.size.height/2.4)];
    [_mySquare7 setPosition:CGPointMake(self.size.width/1.5, self.size.height/3.0)];
    [_mySquare8 setPosition:CGPointMake(self.size.width/2, self.size.height/3.0)];
    [_mySquare9 setPosition:CGPointMake(self.size.width/1.25, self.size.height/3.0)];
    [_mySquare10 setPosition:CGPointMake(self.size.width/1.5, self.size.height/4.1)];
    [_mySquare11 setPosition:CGPointMake(self.size.width/1.5, self.size.height/6.5)];

   
    
    _mySquare1.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare1.size];
    _mySquare2.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare2.size];
    _mySquare3.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare3.size];
    _mySquare4.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare4.size];
    _mySquare5.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare5.size];
    _mySquare6.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare6.size];
    _mySquare7.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare7.size];
    _mySquare8.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare8.size];
    _mySquare9.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare9.size];
    _mySquare10.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare10.size];
    _mySquare11.physicsBody = [SKPhysicsBody bodyWithRectangleOfSize:_mySquare11.size];
    
    [_mySquare1.physicsBody setRestitution:0];
    [_mySquare2.physicsBody setRestitution:0];
    [_mySquare3.physicsBody setRestitution:0];
    [_mySquare4.physicsBody setRestitution:0];
    [_mySquare5.physicsBody setRestitution:0];
    [_mySquare6.physicsBody setRestitution:0];
    [_mySquare7.physicsBody setRestitution:0];
    [_mySquare8.physicsBody setRestitution:0];
    [_mySquare9.physicsBody setRestitution:0];
    [_mySquare10.physicsBody setRestitution:0];
    [_mySquare11.physicsBody setRestitution:0];
    
    [self addChild:_mySquare1];
    [self addChild:_mySquare2];
    [self addChild:_mySquare3];
    [self addChild:_mySquare4];
    [self addChild:_mySquare5];
    [self addChild:_mySquare6];
    [self addChild:_mySquare7];
    [self addChild:_mySquare8];
    [self addChild:_mySquare9];
    [self addChild:_mySquare10];
    [self addChild:_mySquare11];
    

}

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.scaleMode = SKSceneScaleModeAspectFit;
        self.physicsBody = [SKPhysicsBody bodyWithEdgeLoopFromRect:self.frame];
        [self.physicsBody setRestitution:1];
        
        
        [self spawnSquares];
        
        [self activateJointRope];
    }
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    if (_mySquare1.physicsBody.dynamic) {
        
        [_mySquare1.physicsBody setDynamic:NO];
      //   [_mySquare2.physicsBody setDynamic:NO];
    }
    
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        [_mySquare1 setPosition:location];
        
    }
}

-(void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event  {
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:NO];
      // [_mySquare2.physicsBody setDynamic:NO];

    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}

-(void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (!_mySquare1.physicsBody.dynamic) {
        [_mySquare1.physicsBody setDynamic:NO];
      //  [_mySquare2.physicsBody setDynamic:NO];

    }
    //  [_mySquare1.physicsBody setDynamic:YES];
    //  [_mySquare2.physicsBody setDynamic:YES];
    
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
