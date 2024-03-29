<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Notify_HO_of_Assignment</fullName>
        <description>Notify HO of Assignment</description>
        <protected>false</protected>
        <recipients>
            <recipient>kumali@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <field>Hearings_Officer__c</field>
            <type>userLookup</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>OAH_Email_Templates/Notify_HO_of_Assignment</template>
    </alerts>
</Workflow>
