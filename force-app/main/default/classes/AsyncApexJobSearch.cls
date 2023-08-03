public class AsyncApexJobSearch {
    @InvocableMethod(label='Get Async Apex Jobs' description='Returns a list of Async Apex Jobs for a given class name.')
    public static List<AsyncApexJob> getJobsByClassName(List<String> classNames) {
        // We will only handle the first class name in the list in this example.
        String className = classNames.get(0);

        // Query the AsyncApexJob table for jobs related to the given class name.
        List<AsyncApexJob> jobs = [SELECT Id, Status, ExtendedStatus, NumberOfErrors, CreatedDate
                                    FROM AsyncApexJob 
                                    WHERE ApexClass.Name = :className
                                    ORDER BY CreatedDate DESC];
        
        return jobs;
    }
}
