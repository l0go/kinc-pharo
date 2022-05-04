Class {
	#name : #KincDisplay,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #'as yet unclassified' }
KincDisplay class >> getPrimary [
	^ self ffiCall: #( int kinc_random_get(void) ) library: KincLibrary new getModuleName.
]
