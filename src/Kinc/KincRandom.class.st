Class {
	#name : #KincRandom,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #'ffi-calls' }
KincRandom >> get [
	^ self ffiCall: #( int kinc_random_get(void) ) library: KincLibrary new macModuleName.
]

{ #category : #initialization }
KincRandom >> initialize: seed [
	^ self ffiCall: #( void kinc_random_init(int seed) ) library: KincLibrary new macModuleName.
]

{ #category : #'as yet unclassified' }
KincRandom >> max: max [
	^ self ffiCall: #( int kinc_random_get_max(int max) ) library: KincLibrary new macModuleName.
]

{ #category : #'as yet unclassified' }
KincRandom >> min: min max: max [
	^ self ffiCall: #( int kinc_random_get_in(int min, int max) ) library: KincLibrary new macModuleName.
]
