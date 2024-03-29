trigger OAH_Case_Nbr_GeneratorII on OAH_Case_List__c (before insert) {
  for (OAH_Case_List__c newCase: Trigger.new)
  {
      string caseName = String.valueOf(newCase.Name);
      newCase.Name = caseName.toUpperCase();

       List<String> ListOfBoards= new List<String>();
        Schema.DescribeFieldResult fieldResult1 = OAH_Case_List__c.Case_Creation_Boards__c.getDescribe();
        List<Schema.PicklistEntry> ple1 = fieldResult1.getPicklistValues();
        for( Schema.PicklistEntry pickListVal : ple1){
            ListOfBoards.add(pickListVal.getLabel());
        }     

      // At this point ListOfBoards contains all boards that do not start with '*-'

       List<String> ListOfBoardOverrides= new List<String>();
        Schema.DescribeFieldResult fieldResult2 = OAH_Case_List__c.Case_Creation_Boards__c.getDescribe();
        List<Schema.PicklistEntry> ple2 = fieldResult2.getPicklistValues();
        for( Schema.PicklistEntry pickListVal : ple2){
            ListOfBoardOverrides.add(pickListVal.getLabel());
        }     

      // At this point ListOfBoardOverrides contains all boards that start with '*-'

          String EnteredCaseName = String.valueof(newCase.Name);
          if (EnteredCaseName == '')
              EnteredCaseName = String.valueof(OAH_Case_List__c.Case_Type__c);
          // Ensure Case Name ends with hyphen
          if (EnteredCaseName.right(1) != '-')
              EnteredCaseName = EnteredCaseName + '-';
          //  At this point Case Name ends with hyphen
      
      String BoardSearch = newCase.Name; // newCase.Case_Type__c;
      BoardSearch = BoardSearch.substringBefore('-');
      String BoardOverride = '-' + EnteredCaseName.substringBetween('-');
      // Handle override that contains Board hyphen Type (ie. ACC-LIC)
      Integer hyphenPos = EnteredCaseName.indexOf('-');
      if (EnteredCaseName.mid(hyphenPos - 1, 1) != '*' && EnteredCaseName.mid(hyphenPos + 1, 1).isAlpha())
      {
          Integer hyphenPos2 = EnteredCaseName.indexOf('-', hyphenPos + 1);
          BoardSearch = EnteredCaseName.left(hyphenPos2);
      }
      if (ListOfBoards.contains(BoardSearch) || ListofBoardOverrides.contains(BoardOverride))
      {
system.debug('Eligible for Year/Nbr generation');
          
          Integer Idx = ListOfBoards.indexOf(BoardSearch);
          Integer SeqNbrLen;
          SeqNbrLen = 3;
          
//          if (Idx < 0)
//          {
//              Idx = ListOfBoardOverrides.indexOf(BoardOverride);
//              SeqNbrLen = ListOfOverrideLengths.get(Idx);
//          }
//          else
//          {
//              SeqNbrLen = ListOfLengths.get(Idx);  // equals length of number to generate
//          }
          String strNextNumber;
          
          boolean generate_Year = false;
          boolean generate_SeqNbr = false;
          String holdCaseName = EnteredCaseName.substringBeforeLast('-');
          String lastSubStr = holdCaseName.substringAfterLast('-');
          if (lastSubStr == '' || lastSubStr.isnumeric() == false)  // only Case Type was entered or Case Type - override
          {
              generate_Year = true;
              generate_SeqNbr = true;
          }
          if (lastSubStr.isnumeric())  // year was entered
          {
              holdCaseName = holdCaseName.substringBeforeLast('-');
              String nextToLastSubStr = holdCaseName.substringAfterLast('-');
              if (nextToLastSubStr == '' || nextToLastSubStr.isnumeric() == false)  // Case Type and Year were entered or Case Type - override - Year
              {
                  generate_SeqNbr = true;
              }
          }
          // If year and Seq Nbr were entered, just remove last hyphen
          if (generate_Year == false && generate_SeqNbr == false)
              EnteredCaseName = EnteredCaseName.substringBeforeLast('-');

System.debug('holdCaseName = ' + holdCaseName + '-' + generate_Year + '-' + generate_SeqNbr);

          if (generate_Year)
              holdCaseName = EnteredCaseName + String.valueOf(System.Today().year()) + '-';
          else
              holdCaseName = EnteredCaseName;

          if (generate_SeqNbr)
          {
              String SearchString = holdCaseName + '%';
              List<OAH_Case_List__c> returnedCaseList =
                  [SELECT Name FROM OAH_Case_List__c
                    WHERE Name like :SearchString
                    ORDER BY Name DESC
                    LIMIT 1];
              String lastnumber;
              if (!returnedCaseList.isEmpty())
              {
                  lastnumber = returnedCaseList[0].Name.substringAfterLast('-');
                  if (!lastnumber.isNumeric())  // a suffix exists on the retrieved case number
                  {
                  string tmpCaseName = returnedCaseList[0].Name.substringBeforeLast('-');
                  lastnumber = tmpCaseName.substringAfterLast('-');
                  }
              }
              else
                  {lastnumber = '0';}
              Integer nextNumber = integer.valueof(lastNumber);
              nextNumber = nextNumber + 1;
              strNextNumber = String.valueOf(nextNumber);
              strNextNumber = strNextNumber.leftPad(SeqNbrLen, '0');
              newCase.Name = holdCaseName + strNextNumber;
          }
          else
              newCase.Name = holdCaseName;
      }
  }
}