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
	OSPlatform current isWin64
		ifTrue: [ LibC runCommand: 'cd ./vendor/kinc && make.bat --compile --dynlib'. ]
		ifFalse: [ LibC runCommand: 'cd ./vendor/kinc && ./make --compile --dynlib'. ].
]
