Class {
	#name : #TopicsRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicsRetriever >> retrieveQuestions: aUser [
		^ self
		rejectWithUser: aUser
		aQuestions: (self lastHundred: (self orderedByPositiveVotes: aUser topicsRetriver ))
]
