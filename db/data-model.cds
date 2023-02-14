namespace my.devshop;
using { Country, managed } from '@sap/cds/common';

 entity Developers {
    key ID : Integer;
    FirstName  : localized String;
    LastName : String;
    Age  : Integer;
    ProgLanguage: String;
    Company: Association to Companies;
    country : Country;

  }

  entity Companies {
    key ID : Integer;
    name   : String;
    developers  : Association to many Developers on developers.Company = $self;
  }
