Class {
	#name : #PopularTodayRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
PopularTodayRetriever class >> new: cuoora [
	^ self new initializeWith: cuoora
]

{ #category : #'as yet unclassified' }
PopularTodayRetriever >> retrieve: aUser [
	^cuoora popularToday 
]
