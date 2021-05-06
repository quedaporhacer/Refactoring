Class {
	#name : #Question,
	#superclass : #Post,
	#instVars : [
		'title',
		'answers',
		'topics'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser [
	^ (self new) initializeWithTitle: title description: aDescription   user: aUser; yourself. 
]

{ #category : #'instance creation' }
Question class >> newWithTitle: title description: aDescription user: aUser topic: aTopic [
	^ (self new) initializeWithTitle: title description: aDescription   user: aUser topic: aTopic ; yourself. 
]

{ #category : #adding }
Question >> addTopic: aTopic [
	topics add: aTopic.
	aTopic addQuestion: self.

]

{ #category : #accessing }
Question >> answers [
"este metodo no venia en el .st"
	^answers 
]

{ #category : #'initalize-release' }
Question >> initializeWithTitle: aTitle description: aDescription user: aUser [
	self initializeWithDescription: aDescription user: aUser.
	title := aTitle.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	
]

{ #category : #'initalize-release' }
Question >> initializeWithTitle: aTitle description: aDescription user: aUser topic: aTopic [
	self initializeWithTitle: aTitle description: aDescription user: aUser.
	topics add: aTopic.
	aTopic addQuestion: self.
	
]

{ #category : #testing }
Question >> isFromToday [
	^ timestamp asDate = Date today 
]

{ #category : #'as yet unclassified' }
Question >> numberPositiveVotes [
	^self positiveVotes size
]

{ #category : #accessing }
Question >> title [
	^title 
]

{ #category : #accessing }
Question >> topics [
	^topics 
]
