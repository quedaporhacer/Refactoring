Class {
	#name : #CuOOra,
	#superclass : #Object,
	#instVars : [
		'users',
		'topics',
		'questions'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #adding }
CuOOra >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #adding }
CuOOra >> addQuestion: aQuestion forUser: aUser [
	aUser addQuestion: aQuestion.
	questions add: aQuestion.
]

{ #category : #adding }
CuOOra >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #adding }
CuOOra >> addUser: aUser [
	users add: aUser 

]

{ #category : #'as yet unclassified' }
CuOOra >> averageVotes [
	^ (self news sum: [ :q | q numberPositiveVotes ]) / self totalNewForToday
]

{ #category : #initialize }
CuOOra >> initialize [
	users := OrderedCollection new.
	topics := OrderedCollection new.
	questions := OrderedCollection new
]

{ #category : #accessing }
CuOOra >> news [
	^ (questions select: [ :q | q isFromToday ])
	
]

{ #category : #'as yet unclassified' }
CuOOra >> popularToday [
	^ (self news
		select: [ :q | q numberPositiveVotes >= self averageVotes ])
		
]

{ #category : #accessing }
CuOOra >> questions [
	^ questions
]

{ #category : #accessing }
CuOOra >> topics [
	^ topics
]

{ #category : #accessing }
CuOOra >> totalNewForToday [
	^ self news size
]

{ #category : #accessing }
CuOOra >> users [
	^ users
]
