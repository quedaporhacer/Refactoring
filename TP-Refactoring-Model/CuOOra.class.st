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
	 ^(questions sum: [ :q | q positiveVotes size ]) / self questionsFromToday size. 
]

{ #category : #initialize }
CuOOra >> initialize [
	users := OrderedCollection new.
	topics := OrderedCollection new.
	questions := OrderedCollection new
]

{ #category : #'as yet unclassified' }
CuOOra >> popularToday [
	^((self questionsFromToday
		select: [ :q | q numberPositiveVotes >= self averageVotes ])
		asSortedCollection: [ :a :b | a numberPositiveVotes > b numberPositiveVotes ])
		last:(100 min:
					(self questionsFromToday
						select: [ :q | q numberPositiveVotes >= self averageVotes ])
						size)
]

{ #category : #accessing }
CuOOra >> questions [
	^ questions
]

{ #category : #accessing }
CuOOra >> questionsFromToday [
	^questions select: [ :q |  q isFromToday ].
]

{ #category : #accessing }
CuOOra >> topics [
	^ topics
]

{ #category : #accessing }
CuOOra >> users [
	^ users
]
