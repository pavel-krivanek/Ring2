Class {
	#name : #RGBehaviorAdditionWithName,
	#superclass : #RGBehaviorAddition,
	#category : 'Ring2-Changes'
}

{ #category : #actions }
RGBehaviorAdditionWithName >> applyIn: anRGEnvironment inContext: resolvingContext [

	| newBehavior |

	newBehavior := super applyIn: anRGEnvironment inContext: resolvingContext.
	
	newBehavior name: self behaviorName.
	
	^ newBehavior 
	

]
