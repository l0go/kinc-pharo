Class {
	#name : #KincInit,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #'as yet unclassified' }
KincInit >> title:name width:width height:height window:win frame:frame [
	^ self ffiCall: #( int kinc_init(
	const char *name,
	int width,
	int height,
	KincWindowOptions *win,
	KincFramebufferOptions *frame) ) library: KincLibrary new getModuleName.
]
