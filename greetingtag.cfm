<cfif thisTag.executionMode EQ "start">

    <cfset fullName = attributes.firstName & " " & attributes.lastName />

    <cfoutput>
          Hello, #fullName#<br>
    </cfoutput>

</cfif>