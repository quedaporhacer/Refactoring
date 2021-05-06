Class {
	#name : #Answer,
	#superclass : #Post,
	#instVars : [
		'question'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Answer class >> new: aDescription user: aUser question: aQuestion [
	^ self new
		initializeWithDescription: aDescription
			user: aUser
			question: aQuestion;
		yourself
]

{ #category : #initialization }
Answer >> initializeWithDescription: aDescription user: aUser question: aQuestion [
	self initializeWithDescription: aDescription user: aUser.
	question := aQuestion
]

{ #category : #accessing }
Answer >> isTopAnswer [
	"envidia de atributos, no anda el metodo"

	^ self positiveVotes
		>=
			((question sum: [ :answer | answer numberPositiveVotes  ])
				/ question answers size)
]
