Class {
	#name : #KincTest,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #'private - initialization' }
KincTest >> initialize [
	| value |
	value := (1 to: 50) atRandom.
	^value.
]
