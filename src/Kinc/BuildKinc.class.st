"
I compile Kinc into a Dynamic Library.
I will use the version of Kinc which was cloned by GrabKinc.
I will freeze Pharo while compiling.
Example:
```
BuildKinc new execute.
```
"
Class {
	#name : #BuildKinc,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #execution }
BuildKinc >> execute [
	LibC runCommand: 'cd ./vendor/Kinc'.
	OSPlatform current isWin64
		ifTrue: [ LibC runCommand: 'make.bat --compile --dynlib'. ]
		ifFalse: [ LibC runCommand: './make --compile --dynlib'. ].
	LibC runCommand: 'cd ../../'.
]
