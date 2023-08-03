public class ProcessAttributes {
    
    @InvocableMethod(label='Run EPCProductAttribJSONBatchJob' description='Executes the EPCProductAttribJSONBatchJob batch job for provided product Ids.')
    public static void runJobs(List<Id> productIds) {
        vlocity_cmt.EPCProductAttribJSONBatchJob batchInstance = new vlocity_cmt.EPCProductAttribJSONBatchJob(productIds);
        Database.executeBatch(batchInstance);
    }
}
