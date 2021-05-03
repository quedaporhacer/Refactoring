Class {
	#name : #Answer,
	#superclass : #Object,
	#instVars : [
		'question',
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: aDescription  user: aUser question: aQuestion [
	^ self new
		initializeWithDescription: aDescription user: aUser question: aQuestion;
		yourself
]

{ #category : #adding }
Answer >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Answer >> description [
	^ description
]

{ #category : #private }
Answer >> description: anObject [
	description := anObject
]

{ #category : #initialize }
Answer >> initialize [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
]

{ #category : #initialization }
Answer >> initializeWithDescription: aDescription user: aUser question: aQuestion [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
	description := aDescription.
	user := aUser.
	question := aQuestion
]

{ #category : #accessing }
Answer >> isTopAnswer [
	"envidia de atributos, no anda el metodo"
	^ self positiveVotes >=  ((question sum: [:answer | answer positiveVotes size ]) / question answers size )
]

{ #category : #'as yet unclassified' }
Answer >> negativeVotes [
	^votes	reject: [ :vote | vote isLike ].
]

{ #category : #'as yet unclassified' }
Answer >> positiveVotes [
		^ votes select: [ :vote | vote isLike ]
]

{ #category : #private }
Answer >> question: aQuestion [
	question := aQuestion 
]

{ #category : #accessing }
Answer >> timestamp [
	^ timestamp
]

{ #category : #private }
Answer >> timestamp: anObject [
	timestamp := anObject
]

{ #category : #accessing }
Answer >> user [
	^ user
]

{ #category : #private }
Answer >> user: anObject [
	user := anObject
]

{ #category : #accessing }
Answer >> votes [
	^ votes
]
