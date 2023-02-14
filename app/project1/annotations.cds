using CatalogService as service from '../../srv/dev-service';

annotate service.Developers with @(
	UI: {
		HeaderInfo: {
			TypeName: 'Developer',
			TypeNamePlural: 'Developers',
			Title          : {
                $Type : 'UI.DataField',
                Value : FirstName
            },
			Description : {
				$Type: 'UI.DataField',
				Value: LastName
			}
		},
		SelectionFields: [ID,FirstName],
		LineItem: [
			{Value: ID},
			{Value: FirstName},
			{
				Value: LastName,
				Criticality: #Positive
			},
			{
				Value: ProgLanguage,
				Criticality: #Neutral
			}
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: 'Detail', Target: '@UI.FieldGroup#Detail'}
		],
		FieldGroup#Detail: {
			Data: [
				{Value: ID},
				{
					Value: ProgLanguage,
					Criticality: #Neutral
				}

			]
		}
	},
) {

};