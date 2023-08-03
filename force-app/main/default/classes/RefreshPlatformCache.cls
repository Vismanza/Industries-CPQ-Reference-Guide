public with sharing class RefreshPlatformCache {
    
        // Define a class to be used as the parameter type in the invocable method.
        public class RecordIdParam {
            @InvocableVariable(label='Record ID' required=true)
            public Id recordId;
        }
        
        @InvocableMethod(label='Run CPQ cache jobs' description='Runs product hierarchy and cache jobs using CMTAdminJobService')
        public static void runJobs(List<RecordIdParam> recordParams) {
            try {
                // Use the first recordId in the list
                if(!recordParams.isEmpty()) {
                    Id recordId = recordParams[0].recordId;
                    
                    // Assuming startProductHierarchyMaintenanceJob is a method within another class
                    // The class is named here as 'ProductHierarchyMaintenanceJobClass'
                    // We're passing the single record ID to the method
        
                    // Make sure the method startProductHierarchyMaintenanceJob is static and public in its class
                    vlocity_cmt.CMTAdminJobService.startProductHierarchyMaintenanceJob(recordId);
                }
            } catch(Exception e) {
                // Exception handling
                System.debug('Exception occurred while running the job: ' + e.getMessage());
            }
        }
    }
    