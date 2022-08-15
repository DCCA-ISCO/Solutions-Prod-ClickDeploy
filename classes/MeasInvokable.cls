public class MeasInvokable{
  @InvocableMethod
  public static void ProcessMeas(List<Id> recordIds)
  {
    System.debug(recordIds);
  }
}