public class LegHearingsInvokable {
  @InvocableMethod
  public static void ProcessHearings(List<Id> recordIds)
  {
    System.debug(recordIds);
  }
}