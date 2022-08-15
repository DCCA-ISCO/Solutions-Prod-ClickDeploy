<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>DCCA_DO_Ref_Send_to_DIV2</fullName>
        <description>DCCA DO Ref Send to DIV2</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_DO_DIV2_CC2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV2_CC3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV2_CC__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV2_primary2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV2_primary3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV2_primary__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>kdobrowo@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_DO_Ref_Email_Templates/DCCA_DO_Ref_SendtoDiv</template>
    </alerts>
    <alerts>
        <fullName>DCCA_DO_Ref_Send_to_DO</fullName>
        <description>DCCA DO Ref Send to DO</description>
        <protected>false</protected>
        <recipients>
            <recipient>cawakuni@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>juchida@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>ktakahas@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <recipients>
            <recipient>takasaka@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_DO_Ref_Email_Templates/DCCA_DO_Ref_SendtoDO</template>
    </alerts>
    <alerts>
        <fullName>DCCA_DO_Ref_comments_SendtoDIV</fullName>
        <description>DCCA DO Ref comments SendtoDIV</description>
        <protected>false</protected>
        <recipients>
            <field>DCCA_DO_DIV_CC2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV_CC3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV_CC__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV_primary2__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV_primary3__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <field>DCCA_DO_DIV_primary__c</field>
            <type>email</type>
        </recipients>
        <recipients>
            <recipient>kdobrowo@dcca.hawaii.gov.solutions</recipient>
            <type>user</type>
        </recipients>
        <senderType>DefaultWorkflowUser</senderType>
        <template>DCCA_DO_Ref_Email_Templates/DCCA_DO_Ref_SendtoDiv</template>
    </alerts>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment2_Primary</fullName>
        <field>DCCA_DO_DIV2_primary__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV2_Primary__c</formula>
        <name>DCCA DO Comment2 Primary</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment2_Primary2</fullName>
        <field>DCCA_DO_DIV2_primary2__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV2_Primary2__c</formula>
        <name>DCCA DO Comment2 Primary2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment2_Primary3</fullName>
        <field>DCCA_DO_DIV2_primary3__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV2_Primary3__c</formula>
        <name>DCCA DO Comment2 Primary3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_DIV2_CC</fullName>
        <field>DCCA_DO_DIV2_CC__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV2_CC__c</formula>
        <name>DCCA DO Comment DIV2 CC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_DIV2_CC2</fullName>
        <field>DCCA_DO_DIV2_CC2__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV2_CC2__c</formula>
        <name>DCCA DO Comment DIV2 CC2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_DIV2_CC3</fullName>
        <field>DCCA_DO_DIV2_CC3__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV2_CC3__c</formula>
        <name>DCCA DO Comment DIV2 CC3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_DIV_CC</fullName>
        <field>DCCA_DO_DIV_CC__c</field>
        <formula>DCCA_DO_Referral__r.Email_Field__c</formula>
        <name>DCCA DO Comment DIV CC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_DIV_CC2</fullName>
        <field>DCCA_DO_DIV_CC2__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV_CC2__c</formula>
        <name>DCCA DO Comment DIV CC2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_DIV_CC3</fullName>
        <field>DCCA_DO_DIV_CC3__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV_CC3__c</formula>
        <name>DCCA DO Comment DIV CC3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_Division</fullName>
        <field>DCCA_DO_Comment_DIV__c</field>
        <formula>TEXT(DCCA_DO_Referral__r.Division__c)</formula>
        <name>DCCA DO Comment Division</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_Primary</fullName>
        <field>DCCA_DO_DIV_primary__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV_Primary__c</formula>
        <name>DCCA DO Comment Primary</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_Primary2</fullName>
        <field>DCCA_DO_DIV_primary2__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV_Primary2__c</formula>
        <name>DCCA DO Comment Primary2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>DCCA_DO_Comment_Primary3</fullName>
        <field>DCCA_DO_DIV_primary3__c</field>
        <formula>DCCA_DO_Referral__r.Email_DIV_Primary3__c</formula>
        <name>DCCA DO Comment Primary3</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>DCCA DO CMT Division CC</fullName>
        <actions>
            <name>DCCA_DO_Ref_comments_SendtoDIV</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV_CC</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV_CC2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV_CC3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_Primary</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_Primary2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_Primary3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>DCCA_DO_Ref_History_Comment__c.DCCA_DO_Comment_SendTo__c</field>
            <operation>equals</operation>
            <value>To DIV</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_DO_Referral__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>DCCA DO Ref SendtoDIV</fullName>
        <actions>
            <name>DCCA_DO_Ref_Send_to_DIV2</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment2_Primary</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment2_Primary2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment2_Primary3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV2_CC</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV2_CC2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV2_CC3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_Division</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>DCCA_DO_Ref_History_Comment__c.DCCA_DO_Comment_SendTo__c</field>
            <operation>equals</operation>
            <value>To DIV</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_DO_Referral__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>DCCA DO Ref SendtoDO</fullName>
        <actions>
            <name>DCCA_DO_Ref_Send_to_DO</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment2_Primary</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment2_Primary2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment2_Primary3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_Division</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>DCCA_DO_Ref_History_Comment__c.DCCA_DO_Comment_SendTo__c</field>
            <operation>equals</operation>
            <value>To DO</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_DO_Referral__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>UpdtHistCompletedaddr</fullName>
        <actions>
            <name>DCCA_DO_Comment_DIV_CC</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV_CC2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV_CC3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_Division</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_Primary</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_Primary2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_Primary3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>DCCA_DO_Referral__c.Subject__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_DO_Ref_History_Comment__c.DCCA_DO_DIV_primary__c</field>
            <operation>lessOrEqual</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>UpdtHistCompletedaddr2</fullName>
        <actions>
            <name>DCCA_DO_Comment2_Primary</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment2_Primary2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment2_Primary3</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV2_CC</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV2_CC2</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>DCCA_DO_Comment_DIV2_CC3</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>DCCA_DO_Referral__c.Subject__c</field>
            <operation>equals</operation>
            <value>Completed</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_DO_Ref_History_Comment__c.DCCA_DO_DIV2_primary__c</field>
            <operation>lessOrEqual</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>UpdtRefHistDiv</fullName>
        <actions>
            <name>DCCA_DO_Comment_Division</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>DCCA_DO_Ref_History_Comment__c.DCCA_DO_Comment_DIV__c</field>
            <operation>lessOrEqual</operation>
            <value>&quot; &quot;</value>
        </criteriaItems>
        <criteriaItems>
            <field>DCCA_DO_Referral__c.Status__c</field>
            <operation>equals</operation>
            <value>Pending</value>
        </criteriaItems>
        <failedMigrationToolVersion>236.14.5</failedMigrationToolVersion>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
