<cfcomponent extends="mxunit.framework.TestCase"  output="false">


    <cffunction name="testSomethingElse">

        <cfset assertEquals( "my test", "my test") />

    </cffunction>
</cfcomponent>