"
I am bindings used for giving you a random number.
I need a seed in order to generate a random number.
For this example I will simply pass in the current Unix time as the seed, remember that this isn't cryptographically secure:
```
| random |
random := KincRandom new seed: DateAndTime now asUnixTime. 
```
Now I can be used to generate a random number using one of these methods
```
random get.
random max: 50.
random min: 10 max: 50.
```

"
Class {
	#name : #KincRandom,
	#superclass : #Object,
	#category : #Kinc
}

{ #category : #'ffi-calls' }
KincRandom >> get [
	^ self ffiCall: #( int kinc_random_get(void) ) library: KincLibrary new getModuleName.
]

{ #category : #'as yet unclassified' }
KincRandom >> max: max [
	^ self ffiCall: #( int kinc_random_get_max(int max) ) library: KincLibrary new macModuleName.
]

{ #category : #'as yet unclassified' }
KincRandom >> min:min max:max [
	^ self ffiCall: #( int kinc_random_get_in(int min, int max) ) library: KincLibrary new getModuleName.
]

{ #category : #initialization }
KincRandom >> seed:seed [
	^ self ffiCall: #( void kinc_random_init(int seed) ) library: KincLibrary new getModuleName.
]
