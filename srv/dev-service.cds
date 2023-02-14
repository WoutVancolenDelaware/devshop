using my.devshop as my from '../db/data-model';

service CatalogService {
    @odata.draft.enabled
    @fiori.draft.enabled
    @Capabilities.SearchRestrictions : {Searchable : true}
    @Capabilities                    : {
        Insertable : true,
        Deletable  : true,
        Updatable  : true,

    }
  entity Developers as projection on my.Developers;
  entity Companies @readonly as projection on my.Companies;
  


  

}
