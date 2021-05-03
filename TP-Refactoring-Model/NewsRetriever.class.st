Class {
	#name : #NewsRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
NewsRetriever >> retrieveQuestions: aUser [
	^ cuoora news reject: [ :q | q user = aUser  ]
]
