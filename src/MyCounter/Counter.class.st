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

{ #category : #initialize }
Counter >> initialize [
	super initialize.
	 count := 0
]
