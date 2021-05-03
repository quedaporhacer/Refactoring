Class {
	#name : #PopularTodayRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
PopularTodayRetriever >> retrieveQuestions: aUser [
	^ cuoora popularToday reject: [ :q | q user = aUser  ]
]
