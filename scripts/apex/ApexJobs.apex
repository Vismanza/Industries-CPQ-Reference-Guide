String className = 'AsyncApexJobSearch'; // Replace 'YourClassName' with your Apex class name
AsyncApexJobSearch jobSearch = new AsyncApexJobSearch('V2ProductHierarchyBatchProcessor');
List<AsyncApexJob> jobs = jobSearch.getJobsByClassName();

// Now 'jobs' contains the list of async jobs for the specified class.
// Let's print them out.
for (AsyncApexJob job : jobs) {
    System.debug('Job ID: ' + job.Id + ', Status: ' + job.Status + ', Created At: ' + job.CreatedDate);
}

AsyncApexJobSearch.AsyncApexJobSearch('V2ProductHierarchyBatchProcessor').getJobsByClassName;