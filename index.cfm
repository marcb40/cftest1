<cfinclude template="greeting.cfm" />
<!---
<cfset firstName = "Ozzy">
<cfif firstName eq "Bono">
  Still haven't found what I'm looking for.
<cfelseif firstName eq "Ozzy">
  Crazy Train!
<cfelse>
  Choose your own song then...
</cfif>

<cfloop from="1" to="5" index="i">
  <cfoutput>
  #i#<br />
  </cfoutput>
</cfloop>

<cfquery name="getClients" datasource="pa">
  select client_name from client
</cfquery>

<cfoutput query="getClients" > 
    #getClients.client_Name#  
</cfoutput>

--->
<!---custom tag--->
<cf_greetingtag firstName="Emily" lastName="Christiansen" />

<!---include--->
<cfset fullName = getFullName("Emily", "Christiansen") />

<cfoutput>
	#fullName#<br>
</cfoutput>

<!--- component --->
<cfset Greeting = CreateObject("components.Greeting") />
<cfset myGreeting = Greeting.getGreeting(firstName="Emily", lastName="Christiansen") />

<cfoutput>
    #myGreeting#<br>
</cfoutput>

<!--- orm --->
<cfset clients = entityLoad( "Client", { clientName: "WPA Client 1"})>

<!--<cfdump var="#clients#">-->
<cfscript >
  if (arraylen(clients) > 0) {
 	 writeOutput( clients[1].getClientName() );
 	 writeOutput("<br>");
  }
  
  writeOutput("<br>");
  

  //clientService = Createobject("component","service.ClientService");
clientService=application.beanFactory.getBean("ClientService").init();

  allWPAClient = clientService.getAllClientsLike("WPA");
  
   if (arraylen(allWPAClient) > 0) {
   	 for ( i = 1; i <= arrayLen( allWPAClient ); i++ ) {
 	 	writeOutput( allWPAClient[i].getClientName() );
 	 	writeOutput("<br>");
 	 }
 	 writeOutput("<br>");
  }
  
  client20 = clientService.getClientById(20).getClientName();
   writeOutput("Client 20 = " & client20 & "<br>");
  //clientService.addClient("CF Client", "abc123", 300);
  
  codeObj = Createobject("component","model.Siccode");
  //codeObj.addCode("998", "test8", "test999");
 //transaction {
//			sic = entityNew("Siccode", {code: "999", description: "test", display: "test999"});
	//		entitySave( sic );
//		}
</cfscript>

<!---
<cfset allWPAClient = ormExecuteQuery( "FROM Client WHERE clientName like :clientName", { clientName: "WPA%"})>
--->
<cfscript >
   /**if (arraylen(allWPAClient) > 0) {
   	 for ( i = 1; i <= arrayLen( allWPAClient ); i++ ) {
 	 	writeOutput( allWPAClient[i].getClientName() );
 	 	writeOutput("<br>");
 	 }
 	 
 	 writeOutput("<br>");
 	 
 	 writeOutput(serializeJSON(allWPAClient));
  } **/
</cfscript>
	






<!--- component query --->
<!---
<cfinvoke component="components.clientComponent"
	method="retrieveClients"
	returnvariable="allCustomers">
</cfinvoke>

<table width="100%"   cellspacing="0" cellpadding="3">
 <tr>
   <td>Client Name</td>
 </tr>
<cfoutput query="allCustomers">
 <tr>
   <td>#client_name#</td>
 </tr>
</cfoutput>


<cfinvoke
   method="listClients"
   returnvariable="rawXMLClientList"
   webservice="http://localhost:8600/test1/components/clientComponent.cfc?wsdl">

   <cfinvokeargument name="clientName" value="WPA">
</cfinvoke>

<cfset wpaClients = XmlParse(rawXMLClientList)>

<cfdump var="#wpaClients#">

<cfoutput>
	#wpaClients#
</cfoutput>
--->
</table>

	

