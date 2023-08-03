public class ProcessAttributes {
    
    public class FlowInput {
        @InvocableVariable(label='Product Record Id')
        public Id productId;
    }

    @InvocableMethod(label='Run EPCProductAttribJSONBatchJob' description='Executes the EPCProductAttribJSONBatchJob batch job for provided product Ids.')
    public static void runJobs(List<FlowInput> products) {
        List<Id> productIds = new List<Id>();
        for(FlowInput product : products) {
            productIds.add(product.productId);
        }
        
        vlocity_cmt.EPCProductAttribJSONBatchJob batchInstance = new vlocity_cmt.EPCProductAttribJSONBatchJob(productIds);
        Database.executeBatch(batchInstance);
    }
}
