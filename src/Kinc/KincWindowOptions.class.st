"
I am the options for KincWindow.
Pass me into KincWindow in order to set specific default settings.
"
Class {
	#name : #KincWindowOptions,
	#superclass : #FFIStructure,
	#classVars : [
		'OFFSET_DISPLAY_INDEX',
		'OFFSET_HEIGHT',
		'OFFSET_MODE',
		'OFFSET_TITLE',
		'OFFSET_VISIBLE',
		'OFFSET_WIDTH',
		'OFFSET_WINDOW_FEATURES',
		'OFFSET_X',
		'OFFSET_Y'
	],
	#pools : [
		'KincWindowMode'
	],
	#category : #Kinc
}

{ #category : #'field definition' }
KincWindowOptions class >> fieldsDesc [
	^#(
		char *title;

		int x;
		int y;
		int width;
		int height;
		int display_index;
	
		bool visible;
		int window_features;
		
		KincWindowMode mode;
	)
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> display_index [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_DISPLAY_INDEX
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> display_index: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_DISPLAY_INDEX put: anObject
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> height [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_HEIGHT
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> height: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_HEIGHT put: anObject
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> mode [
	"This method was automatically generated"
	^KincWindowMode fromInteger: (handle unsignedLongAt: OFFSET_MODE)
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> mode: anObject [
	"This method was automatically generated"
	handle unsignedLongAt: OFFSET_MODE put: anObject value
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> title [
	"This method was automatically generated"
	^ExternalData fromHandle: (handle pointerAt: OFFSET_TITLE) type: ExternalType char asPointerType
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> title: anObject [
	"This method was automatically generated"
	handle pointerAt: OFFSET_TITLE put: anObject asString.
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> visible [
	"This method was automatically generated"
	^handle booleanAt: OFFSET_VISIBLE
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> visible: anObject [
	"This method was automatically generated"
	handle booleanAt: OFFSET_VISIBLE put: anObject
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> width [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WIDTH
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> width: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WIDTH put: anObject
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> window_features [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_WINDOW_FEATURES
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> window_features: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_WINDOW_FEATURES put: anObject
]

{ #category : #'as yet unclassified' }
KincWindowOptions >> withDefaults [
	self title: ''.
	self mode: WINDOW.
	self display_index: KincDisplay getPrimary.
	self x: -1.
	self y: -1.
	self width: 800.
	self height: 600.
	self visible: true.
	self window_features: ((KincWindowFeature resizable bitOr: KincWindowFeature minimizable) bitOr: KincWindowFeature maximizable).
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> x [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_X
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> x: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_X put: anObject
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> y [
	"This method was automatically generated"
	^handle signedLongAt: OFFSET_Y
]

{ #category : #'accessing - structure variables' }
KincWindowOptions >> y: anObject [
	"This method was automatically generated"
	handle signedLongAt: OFFSET_Y put: anObject
]
