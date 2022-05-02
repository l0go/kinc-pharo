Class {
	#name : #KincLibrary,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #'accessing - platform' }
KincLibrary >> macModuleName [
	#(
		'./vendor/kinc/build/build/Release/libKinc.dylib' )
	do: [ :path |
		path asFileReference exists ifTrue: [ ^ path ] ].
	self error: 'Cannot locate Cairo library. Please check that it is installed on your system.'.
]
