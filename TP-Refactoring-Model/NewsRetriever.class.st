Class {
	#name : #NewsRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
NewsRetriever class >> new: cuoora [
	^ self new initializeWith: cuoora
]

{ #category : #'as yet unclassified' }
NewsRetriever >> retrieve: aUser [
	^cuoora news
]
