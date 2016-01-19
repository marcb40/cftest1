
<!--- Set up our test suite. --->
<cfset testSuite = createObject( "component", "mxunit.framework.TestSuite" ).TestSuite() />

<!--- Add the roman numeral spec (ie. test specification). --->
<cfset testSuite.addAll( "service.TestClientService" ) />

<!---
    Run the tests that have been added. This will include all the
    methods of the all the components that we added above (in this
    case, it will be the encode() and decode() methods of the
    RomanNumeralEncoderTest.cfc).
--->
<cfset results = testSuite.run() />

<!---
    Output the results. Pass in the web-root of the MXUnit
    folder so that the rendering can properly set up the CSS
    and JavaScript URLs.
--->
<cfoutput>
    #results.getHtmlResults( "../mxunit/" )#
</cfoutput>