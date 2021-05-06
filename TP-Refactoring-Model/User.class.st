Class {
	#name : #User,
	#superclass : #Object,
	#instVars : [
		'questionRetriever',
		'questions',
		'answers',
		'username',
		'password',
		'topics',
		'following',
		'votes'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance-creation' }
User class >> username: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	^ self new
		initializeWithUsername: aUsername password: aPassword questionRetriever: aQuestionRetriever;
		yourself
]

{ #category : #accessing }
User >> addAnswer: anAnswer [
	answers add: anAnswer 

]

{ #category : #accessing }
User >> addQuestion: aQuestion [
	questions add: aQuestion
]

{ #category : #accessing }
User >> addTopic: aTopic [
	topics add: aTopic 

]

{ #category : #accessing }
User >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
User >> answers [
	^ answers
]

{ #category : #accessing }
User >> follow: aUser [
	following add: aUser 
]

{ #category : #'as yet unclassified' }
User >> followedQuestions [
	^(following flatCollect: [ :follow | follow questions ])
]

{ #category : #accessing }
User >> following [
	^ following
]

{ #category : #initialization }
User >> initialize [
	questions := OrderedCollection new.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	following := OrderedCollection new.
	votes := OrderedCollection new
]

{ #category : #initialization }
User >> initializeWithUsername: aUsername password: aPassword questionRetriever: aQuestionRetriever [
	username := aUsername.
	password := aPassword.
	questionRetriever := aQuestionRetriever.
	questions := OrderedCollection new.
	answers := OrderedCollection new.
	topics := OrderedCollection new.
	following := OrderedCollection new.
	votes := OrderedCollection new
]

{ #category : #accessing }
User >> password [
	^ password
]

{ #category : #accessing }
User >> questionRetriever [
	^ questionRetriever
]

{ #category : #private }
User >> questionRetriever: aQuestionRetriever [
	questionRetriever := aQuestionRetriever.
]

{ #category : #accessing }
User >> questions [
	^ questions
]

{ #category : #accessing }
User >> questionsOfInterest [
	^ questionRetriever retrieveQuestions: self.
]

{ #category : #'as yet unclassified' }
User >> social [
	^ (self followedQuestions
		asSortedCollection: [ :a :c | a positiveVotes size > c positiveVotes size ])
		last: (100 min: self followedQuestions size)
]

{ #category : #'as yet unclassified' }
User >> topicQuestions [
	^ topics flatCollect: [ :topic | topic questions ]
]

{ #category : #accessing }
User >> topics [
	^ topics
]

{ #category : #'as yet unclassified' }
User >> topicsRetriver [
		^ (self topicQuestions
		asSortedCollection: [ :a :c | a positiveVotes size > c positiveVotes size ])
		last: (100 min: self topicQuestions size)
]

{ #category : #accessing }
User >> username [
	^ username
]

{ #category : #accessing }
User >> votes [
	^ votes
]
