as yet unclassified
initializePresenter
	super initializePresenter.
	self textModel acceptBlock: [ :t | (TAParser parseMethod: t) inspect ]