as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				baseline: 'Ohm' with: [
					spec repository: 'github://hpi-swa/ohm-s/packages'];
				package: 'ContextS2-Core' with:
 					[ spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/ContextSTrunk' ];
				baseline: 'Vivide' with: 
					[ spec repository: 'github://hpi-swa/vivide/repository' ];
				package: 'Gramada' with: [spec requires: #('libraries')];
				yourself.
			spec
				group: 'default' with: #('Gramada');
				group: 'libraries' with: #('Ohm' 'Vivide' 'ContextS2-Core');
				group: 'TravisCI' with: #('Gramada')	];
				yourself
