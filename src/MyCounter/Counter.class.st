"
I am a integer that can count up and down.
My API is
- decrement, increment
My creation API is message startingAt: 
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #creation }
Counter class >> startingAt: anInteger [
	^ self new count: anInteger
]

{ #category : #accessing }
Counter >> count [
	^ count
]

{ #category : #accessing }
Counter >> count: anInteger [
	count := anInteger 
]

{ #category : #'changing state' }
Counter >> decrement [ 
	count := count - 1
]

{ #category : #'changing state' }
Counter >> increment [ 
	count := count + 1
]

{ #category : #initialize }
Counter >> initialize [
	super initialize.
	 count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', count printString.
]
