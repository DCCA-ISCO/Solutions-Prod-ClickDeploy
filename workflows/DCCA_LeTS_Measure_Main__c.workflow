<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Alert_Measure_Identifier_Chg1</fullName>
        <description>Alert Measure Identifier Chg1</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_ASO__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_BREG__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_CATV__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_DCA__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_DFI__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_HPEAP__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>kladao@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>takasaka@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/LeTS_Meas_Identifier_Chg</template>
    </alerts>
    <alerts>
        <fullName>Alert_Measure_Identifier_Chg2</fullName>
        <description>Alert Measure Identifier Chg2</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_INS__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_ISCO__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_OAH__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_OCP__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_PVL__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_RICO__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>kladao@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>takasaka@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/LeTS_Meas_Identifier_Chg</template>
    </alerts>
    <alerts>
        <fullName>Alert_Measure_Text_Change</fullName>
        <description>Alert Measure Text Change</description>
        <protected>false</protected>
        <recipients>
            <recipient>kladao@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>takasaka@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/LeTS_Meas_Identifier_Chg</template>
    </alerts>
    <alerts>
        <fullName>Alert_New_Measure_added</fullName>
        <ccEmails>kdobrowo@dcca.hawaii.gov</ccEmails>
        <description>Alert New Measure added</description>
        <protected>false</protected>
        <recipients>
            <recipient>kladao@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>takasaka@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/DCCA_LeTS_New_Measure</template>
    </alerts>
    <alerts>
        <fullName>LeTS_All_Track_turned_off_Notice</fullName>
        <description>LeTS All Track turned off Notice</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_Leg_Coord__c</field>
            <type>email</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/LeTS_All_Track_off_Notice</template>
    </alerts>
    <alerts>
        <fullName>LeTS_All_Track_turned_on_Notice</fullName>
        <description>LeTS All Track turned on Notice</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_LeTS_Meas_Email_Leg_Coord__c</field>
            <type>email</type>
        </recipients>
        <senderAddress>kdobrowo@dcca.hawaii.gov</senderAddress>
        <senderType>OrgWideEmailAddress</senderType>
        <template>DCCA_LeTS_Email/LeTS_All_Track_on_Notice</template>
    </alerts>
    <alerts>
        <fullName>LeTS_DivLead_assignment_missing_on_Measure</fullName>
        <description>LeTS DivLead assignment missing on Measure</description>
        <protected>false</protected>
        <recipients>
            <recipient>kladao@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>takasaka@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_LeTS_Email/DCCA_LeTS_MeasMissing_Lead</template>
    </alerts>
    <fieldUpdates>
        <fullName>DCCA_LeTS_ADMIN_UPDT</fullName>
        <field>DCCA_LeTS_Admin_Indicator__c</field>
        <formula>IF (CONTAINS( DCCA_LeTS_Main_Report_Title__c , &quot;DCCA&quot;)
||
CONTAINS( DCCA_LeTS_Main_Report_Title__c , &quot;commerce &quot;)
||
CONTAINS( DCCA_LeTS_Meas_Title__c , &quot;DCCA&quot;)
||
CONTAINS( DCCA_LeTS_Meas_Title__c , &quot;commerce &quot;)
||
CONTAINS( DCCA_LeTS_Meas_Desc__c , &quot;DCCA&quot;)
||
CONTAINS( DCCA_LeTS_Meas_Desc__c , &quot;commerce &quot;)
, &quot;CCA-ADMIN&quot;, &quot;ADMIN&quot;)</formula>
        <name>DCCA LeTS ADMIN UPDT</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LeTS_All_Divisions</fullName>
        <field>All_Divisions_Track__c</field>
        <literalValue>Off</literalValue>
        <name>LeTS All Divisions</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>SetMeasStageValue</fullName>
        <field>SetMeasStage__c</field>
        <formula>LEFT(DCCA_LeTS_Current_Status__c, 200)</formula>
        <name>SetMeasStageValue</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>DCCA LeTS ADMINUPDT</fullName>
        <actions>
            <name>DCCA_LeTS_ADMIN_UPDT</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>DCCA_LeTS_Measure_Main__c.DCCA_LeTS_Package__c</field>
            <operation>equals</operation>
            <value>Governor Package</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LeTS All Track</fullName>
        <actions>
            <name>LeTS_All_Divisions</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>DCCA_LeTS_Measure_Main__c.All_Divisions_Track__c</field>
            <operation>lessOrEqual</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>NewMeasAlert</fullName>
        <actions>
            <name>Alert_New_Measure_added</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>DCCA_LeTS_Measure_Main__c.CreatedDate</field>
            <operation>greaterThan</operation>
            <value>1/27/2021</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>SetNoDivLeadonMeas</fullName>
        <actions>
            <name>LeTS_DivLead_assignment_missing_on_Measure</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <booleanFilter>1 AND (2 OR 3 OR 4 OR 5)</booleanFilter>
        <criteriaItems>
            <field>DCCA_LeTS_Measure_Main__c.Lead_Division__c</field>
            <operation>lessOrEqual</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_LeTS_Measure_Main__c.Div2__c</field>
            <operation>greaterThan</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_LeTS_Measure_Main__c.Div3__c</field>
            <operation>greaterThan</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_LeTS_Measure_Main__c.Div4__c</field>
            <operation>greaterThan</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_LeTS_Measure_Main__c.Div5__c</field>
            <operation>greaterThan</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>TexttoMeasStage</fullName>
        <actions>
            <name>SetMeasStageValue</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>DCCA_LeTS_Measure_Main__c.DCCA_LeTS_Current_Status__c</field>
            <operation>greaterThan</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
