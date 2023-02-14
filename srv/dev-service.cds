using my.devshop as my from '../db/data-model';

service CatalogService {
  entity Developers @readonly as projection on my.Developers;
  entity Companies @readonly as projection on my.Companies;
  


  

}
