Class {
	#name : #PopularTodayRetriever,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
PopularTodayRetriever >> retrieveQuestions: aUser [
		^ self
		rejectWithUser: aUser
		aQuestions: (self lastHundred: (self orderedByPositiveVotes: cuoora popularToday ))
]
