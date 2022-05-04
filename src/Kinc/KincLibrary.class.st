"
I return the path to the compiled Kinc dynamic library file for each platform.
I am mainly used internally for the bindings.

Common Use Case Example:
```
KincLibrary new getModuleName
```
If you just want to get the file for one platform, do it like so:
```
KincLibrary new macModuleName
```
"
Class {
	#name : #KincLibrary,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #'accessing - platform' }
KincLibrary >> getModuleName [
	OSPlatform current isMacOS
		ifTrue: [ ^self macModuleName ].
]

{ #category : #'accessing - platform' }
KincLibrary >> macModuleName [
	#(
		'./vendor/kinc/build/build/Release/libKinc.dylib' )
	do: [ :path |
		path asFileReference exists ifTrue: [ ^ path ] ].
	self error: 'Cannot locate Cairo library. Please check that it is installed on your system.'.
]
