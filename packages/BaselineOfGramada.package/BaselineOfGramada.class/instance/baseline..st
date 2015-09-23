as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Ohm' with: [
					spec repository: 'https://github.com/hpi-swa/Ohm-S/packages'];
				baseline: 'Vivide' with: 
					[ spec repository: 'https://github.com/hpi-swa/Vivide/repository' ];
				package: 'Gramada' with: [spec requires: #('libraries')];
				yourself.
			spec
				group: 'default' with: #('Gramada');
				group: 'libraries' with: #('Ohm' 'Vivide');
				group: 'TravisCI' with: #('Gramada')	];
				yourself