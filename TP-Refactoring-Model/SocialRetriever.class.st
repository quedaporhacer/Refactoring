Class {
	#name : #SocialRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
SocialRetriever >> retrieve: aUse [
	^aUse social
]
