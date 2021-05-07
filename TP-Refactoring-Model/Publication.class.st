Class {
	#name : #Publication,
	#superclass : #Object,
	#instVars : [
		'timestamp',
		'user',
		'votes',
		'description'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Publication class >> new: aDescription user: aUser [ 
	^ self new
		initializeWithDescription: aDescription
			user: aUser;
		yourself
]

{ #category : #adding }
Publication >> addVote: aVote [
	votes add: aVote
]

{ #category : #accessing }
Publication >> description [
	^ description
]

{ #category : #initialization }
Publication >> initializeWithDescription: aDescription user: aUser [
	votes := OrderedCollection new.
	timestamp := DateAndTime now.
	description := aDescription.
	user := aUser.
]

{ #category : #'as yet unclassified' }
Publication >> negativeVotes [
	^votes	reject: [ :vote | vote isLike ].
]

{ #category : #'as yet unclassified' }
Publication >> positiveVotes [
		^ votes select: [ :vote | vote isLike ]
]

{ #category : #accessing }
Publication >> timestamp [
	^ timestamp
]

{ #category : #accessing }
Publication >> user [
	^ user
]

{ #category : #accessing }
Publication >> votes [
	^ votes
]
