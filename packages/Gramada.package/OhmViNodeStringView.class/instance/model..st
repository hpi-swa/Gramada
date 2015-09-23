initialization
model: anItemModel

	self disconnectModel.
	
	self viModel: anItemModel.

	self
		reset;
		connectModel.