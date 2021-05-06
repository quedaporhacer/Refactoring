Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#category : #'TP-Refactoring-Model'
}

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
