DynamicsCrossFrameworkTest
==========================

Testing the possibility of using UIDynamicAnimator as a cross framework Physics Engine

This is a test to prove a concept:

The UIDynamicAnimator does not care what its animating, as long as it responds to the UIDynamicItem protocol. I hypothesized that one could cause SpriteKit Nodes and UIView views to animate and collide in the UIDynamicAnimator.

I had to implement bounds, center and transform in SKNode to achieve this, and the project currently works (kind of)

TODO:
Flip coordinate plane in SpriteKit so that it looks correct.

Implement transform for SKNode (I am not sure on the math for this yet)

I will gladly except pull requests to implement these features.
