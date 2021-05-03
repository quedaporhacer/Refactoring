Class {
	#name : #TopicsRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
TopicsRetriever >> retrieveQuestions: aUser [
	^ aUser topicsRetriver reject: [ :q | q user = aUser  ]
]
