Class {
	#name : #SocialRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialRetriever >> retrieveQuestions: aUser [
		^ self
		rejectWithUser: aUser
		aQuestions: (self lastHundred: (self orderedByPositiveVotes: aUser social))
]
