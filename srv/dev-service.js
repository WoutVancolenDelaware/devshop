module.exports = (srv) => {
    const { Developers } = srv.entities

    srv.after("READ", "Developers", async (developers, req) => {
        console.log("Debug Test")
      });
     //Reply mock data for Books...
    srv.on ('READ', 'Developers', ()=>[
      { ID:1, FirstName:'Wout', LastName: 'Vancolen', Age: 25, ProgLanguage: 'JAVA', company_ID:10}
      
    ])
   
    // Reply mock data for Authors...
    srv.on ('READ', 'Companies', ()=>[
      { ID:10, name:'delaware' }
    ])
      
   }
