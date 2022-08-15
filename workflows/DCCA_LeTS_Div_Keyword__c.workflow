<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Alert_Keyword_ContextChg1</fullName>
        <description>Alert Keyword ContextChg1</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_LeTS_KY_Email_ASO__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_BREG__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_CATV__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_DCA__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_DFI__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_DO__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>kdobrowo@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/DCCA_LeTS_KY_ContextChg_Alert</template>
    </alerts>
    <alerts>
        <fullName>Alert_Keyword_ContextChg2</fullName>
        <description>Alert Keyword ContextChg2</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_LeTS_KY_Email_HPEAP__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_INS__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_ISCO__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_OAH__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_OCP__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_PVL__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_RICO__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>kdobrowo@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/DCCA_LeTS_KY_ContextChg_Alert</template>
    </alerts>
    <alerts>
        <fullName>Alert_New_Divison_on_KY1</fullName>
        <description>Alert New Divison on KY1</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_LeTS_KY_Email_ASO__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_BREG__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_CATV__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_DCA__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_DFI__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_DO__c</field>
            <type>email</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/DCCA_LeTS_KY_Division_Added</template>
    </alerts>
    <alerts>
        <fullName>Alert_New_Divison_on_KY2</fullName>
        <description>Alert New Divison on KY2</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_LeTS_KY_Email_HPEAP__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_INS__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_ISCO__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_OAH__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_OCP__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_PVL__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_KY_Email_RICO__c</field>
            <type>email</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/DCCA_LeTS_KY_Division_Added</template>
    </alerts>
    <rules>
        <fullName>LeTSDivKYContextChg</fullName>
        <actions>
            <name>Alert_Keyword_ContextChg1</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Alert_Keyword_ContextChg2</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <failedMigrationToolVersion>236.14.5</failedMigrationToolVersion>
        <formula>ISCHANGED(DCCA_LeTS_KY_Context__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>NewDivKY</fullName>
        <actions>
            <name>Alert_New_Divison_on_KY1</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Alert_New_Divison_on_KY2</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <failedMigrationToolVersion>236.14.5</failedMigrationToolVersion>
        <formula>CreatedDate  =  LastModifiedDate</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
</Workflow>