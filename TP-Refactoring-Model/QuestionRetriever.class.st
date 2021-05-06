Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new initializeWith: cuoora
]

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora and: aSymbol [
	^ self new cuoora: cuoora; option:aSymbol; yourself.
]

{ #category : #initialization }
QuestionRetriever >> initializeWith: aCuooraInstance [
	cuoora := aCuooraInstance
]

{ #category : #accessing }
QuestionRetriever >> lastHundred: aQuestions [
	^aQuestions last: (100 min: aQuestions size).
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> orderedByPositiveVotes: aQuestions [
	^ aQuestions
		asSortedCollection: [ :a :c | a numberPositiveVotes  > c numberPositiveVotes ]
]

{ #category : #'as yet unclassified' }
QuestionRetriever >> rejectWithUser: anUser aQuestions: aQuestions [
	^ aQuestions reject: [ :q | q user = anUser ]
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
	self subclassResponsibility 
]
