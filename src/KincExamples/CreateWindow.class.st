Class {
	#name : #CreateWindow,
	#superclass : #Object,
	#instVars : [
		'WindowTitle',
		'WindowOptions'
	],
	#category : #KincExamples
}

{ #category : #initialization }
CreateWindow >> initialize [
	WindowTitle := 'Pharo'.
	WindowOptions := KincWindowOptions externalNew withDefaults.
	KincInit new title:WindowTitle width:800 height:600 window:WindowOptions frame:nil.
]
