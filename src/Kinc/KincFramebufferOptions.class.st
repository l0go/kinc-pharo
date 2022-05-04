Class {
	#name : #KincFramebufferOptions,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_COLOR_BITS',
		'OFFSET_DEPTH_BITS',
		'OFFSET_FREQUENCY',
		'OFFSET_SAMPLES_PER_PIXEL',
		'OFFSET_STENCIL_BITS',
		'OFFSET_VERTICAL_SYNC'
	],
	#category : #Kinc
}

{ #category : #'as yet unclassified' }
KincFramebufferOptions class >> fieldsDesc [
	^#(
		int frequency;
		bool vertical_sync;
		int color_bits;
		int depth_bits;
		int stencil_bits;
		int samples_per_pixel;
	)
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> color_bits [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_COLOR_BITS
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> color_bits: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_COLOR_BITS put: anObject
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> depth_bits [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_DEPTH_BITS
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> depth_bits: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_DEPTH_BITS put: anObject
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> frequency [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_FREQUENCY
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> frequency: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_FREQUENCY put: anObject
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> samples_per_pixel [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_SAMPLES_PER_PIXEL
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> samples_per_pixel: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_SAMPLES_PER_PIXEL put: anObject
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> stencil_bits [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_STENCIL_BITS
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> stencil_bits: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_STENCIL_BITS put: anObject
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> vertical_sync [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_VERTICAL_SYNC
]

{ #category : #'accessing - structure variables' }
KincFramebufferOptions >> vertical_sync: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_VERTICAL_SYNC put: anObject
]
