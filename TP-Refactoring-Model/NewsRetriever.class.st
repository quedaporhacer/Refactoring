Class {
	#name : #NewsRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
NewsRetriever >> retrieveQuestions: aUser [
	^ self rejectWithUser: aUser aQuestions: (cuoora news) 
]
