as yet unclassified
addRepository: aRepository
	((repositories includes: aRepository) or: [aRepository == MCCacheRepository uniqueInstance])
		ifFalse: [repositories add: aRepository.
				self class default addRepository: aRepository].
	self changed: (Array with: #added with: aRepository).
	^ aRepository