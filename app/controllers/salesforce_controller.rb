class SalesforceController < ApplicationController

  def index
  	clients = Salesforce.query_client "LastName__c LIKE '%Test%'"
  	@current_client = clients.first
  	puts @current_client
  end

end
