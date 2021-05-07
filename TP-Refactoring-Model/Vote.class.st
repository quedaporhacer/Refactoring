Class {
	#name : #Vote,
	#superclass : #Object,
	#instVars : [
		'isLike',
		'timstamp',
		'publication',
		'user'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
Vote class >> user: aUser dislikesPublication: aPublication [
	^ self new
		initializeWithUser: aUser publication: aPublication state: false;
		dislike;
		yourself
]

{ #category : #'instance creation' }
Vote class >> user: aUser likesPublication: aPublication [
	^ self new
		initializeWithUser: aUser publication: aPublication state: true;
		yourself
]

{ #category : #private }
Vote >> dislike [
	isLike := false.
]

{ #category : #initialize }
Vote >> initializeWithUser: aUser publication: aPublication state: aState [
	user := aUser.
	publication := aPublication.
	isLike := aState.
	timstamp := DateAndTime now
]

{ #category : #accessing }
Vote >> isLike [
	^ isLike
]

{ #category : #private }
Vote >> like [
	isLike := true.
]

{ #category : #accessing }
Vote >> publication [
	^ publication
]

{ #category : #accessing }
Vote >> user [
	^ user
]
