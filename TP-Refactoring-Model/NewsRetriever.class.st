Class {
	#name : #NewsRetriever,
	#superclass : #QuestionRetriever,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
NewsRetriever class >> new: cuoora [
	^ self new initializeWith: cuoora
]

{ #category : #initialization }
NewsRetriever >> initializeWith: aCuooraInstance [
	cuoora := aCuooraInstance
]

{ #category : #retrieving }
NewsRetriever >> retrieveQuestions: aUser [
	^ 
			(self
				rejectWithUser: aUser
				aQuestions: (self
		lastHundred: (self orderedByPositiveVotes: cuoora news)))
]
