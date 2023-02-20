sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/delaware/companies/test/integration/FirstJourney',
		'com/delaware/companies/test/integration/pages/CompaniesList',
		'com/delaware/companies/test/integration/pages/CompaniesObjectPage',
		'com/delaware/companies/test/integration/pages/DevelopersObjectPage'
    ],
    function(JourneyRunner, opaJourney, CompaniesList, CompaniesObjectPage, DevelopersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/delaware/companies') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCompaniesList: CompaniesList,
					onTheCompaniesObjectPage: CompaniesObjectPage,
					onTheDevelopersObjectPage: DevelopersObjectPage
                }
            },
            opaJourney.run
        );
    }
);