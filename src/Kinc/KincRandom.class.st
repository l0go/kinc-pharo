Class {
	#name : #KincRandom,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #'ffi-calls' }
KincRandom >> randomGet [
	^ self ffiCall: #( int kinc_random_get(void) ) library: KincLibrary new macModuleName.
]
