Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #accessing }
CounterTest >> testCountIsSetAndRead [
	| c |
	c := Counter new.
	c count: 7.
	self assert: c count equals: 7
]

{ #category : #initialization }
CounterTest >> testNewCounterCountIsSetToArg [
	"Verify a counter created with startingAt: anInteger, has count initialized to anInteger"
	| c |
	c := Counter startingAt: 7.
	self assert: c count equals: 7
]

{ #category : #initialization }
CounterTest >> testNewCounterCountIsZero [
	"Verify a counter created with new has a count of Zero."
	| c |
	c := Counter new.
	self assert: c count equals: 0
]
