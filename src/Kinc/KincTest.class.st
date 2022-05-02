Class {
	#name : #KincTest,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #initialization }
KincTest >> initialize [
	| working |
	working := (FileSystem disk workingDirectory / 'vendor').
	"Check if the last dependency required is cloned"
	(working / 'kinc' / 'Tools' / 'kmake' / 'kmake') exists
		ifFalse: [GrabKinc new execute.].
]
