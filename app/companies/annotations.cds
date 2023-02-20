using CatalogService as service from '../../srv/dev-service';

annotate service.Companies with @UI : { 
    SelectionFields  : [
        name
    ],
 };

annotate service.Companies with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
    ]
);
annotate service.Companies with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
          $Type : 'UI.ReferenceFacet',
          ID : 'facet2',
          Label : 'Developers',
          Target : 'developers/@UI.LineItem', 
        }
    ]
);

annotate service.Developers with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'FirstName',
            Value : FirstName,
        },
         {
            $Type : 'UI.DataField',
            Label : 'LastName',
            Value : LastName,
        },
         {
            $Type : 'UI.DataField',
            Label : 'Language',
            Value : ProgLanguage,
        },
    ]
);
