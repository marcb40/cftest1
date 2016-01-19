<cfcomponent extends="mxunit.framework.TestCase"  output="false">


    <cffunction name="testGetClientName">

        <cfset var clientService = createObject( "component", "test1.service.ClientService" ).init() />
        <cfset assertEquals( "just testing", clientService.getClientName()) />
        <cfset assertEquals( "my test", clientService.getClientById(20).getClientName()) />

    </cffunction>
</cfcomponent>