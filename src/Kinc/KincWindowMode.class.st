Class {
	#name : #KincWindowMode,
	#superclass : #FFIEnumeration,
	#classVars : [
		'EXCLUSIVE_FULLSCREEN',
		'FULLSCREEN',
		'WINDOW'
	],
	#category : #Kinc
}

{ #category : #'enum declaration' }
KincWindowMode class >> enumDecl [
	^ #(
		WINDOW 1
		FULLSCREEN 2
		EXCLUSIVE_FULLSCREEN 3
	)
]
