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

{ #category : #'changing state' }
CounterTest >> testDecrement [ 
	| c |
	c := Counter new.
	c decrement; decrement.
	self assert: c count equals: -2
]

{ #category : #'changing state' }
CounterTest >> testIncrement [ 
	| c |
	c := Counter new.
	c increment; increment.
	self assert: c count equals: 2
]

{ #category : #initialization }
CounterTest >> testNewCounterCountIsSetToArg [
	"Verify a counter created with startingAt: anInteger, has count initialized to anInteger"
	self assert: (Counter startingAt: 7) count equals: 7

]

{ #category : #initialization }
CounterTest >> testNewCounterCountIsZero [
	"Verify a counter created with new has a count of Zero."
	self assert: Counter new count equals: 0
]
