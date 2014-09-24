module Salesforce
	
	@sf = Restforce.new :host => 'test.salesforce.com',
		:username => 'housingapp@breadforthecity.org',
		# password, security token, client_id, and client_secret go here
		# https://github.com/ejholmes/restforce#oauth-token-authentication
        :client_id => '3MVG9GiqKapCZBwGfZUYdEUVISwUSdxm.e0b8ETaVZ9oODS.bIR1nUB2Qt2uc5j1GDdsxwEhI.xKaht.ywpR8

    @base_qry = 'SELECT Id, Name, FirstName__c, Middle_Name__c, LastName__c, 
    			 Race__c, DOB__c, SSN__c, Primary_Language__c, 
				 Gender__c, TotalIncome__c, Children__c, Total_House__c,
				 Address1__c, City__c, State__c, ZipCode__c, 
				 Address__Latitude__s, Address__Longitude__s, Rent__c 
				 FROM Intake__c
				 WHERE '


    def self.query_client qry 
    	@sf.query @base_qry + qry 
    end

end
