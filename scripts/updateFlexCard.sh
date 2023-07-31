cd ../vlocity/FlexCard
sed -i -e 's/"VlocityRecordSObjectType": "vlocity_cmt__VlocityCard__c"/"VlocityRecordSObjectType": "OmniUiCard"/g' **/*.json
sed -i -e 's/"VlocityRecordSourceKey": "vlocity_cmt__VlocityCard__c/"VlocityRecordSourceKey": "OmniUiCard/g' **/*.json
sed -i -e 's/"vlocity_cmt__Version__c"/"VersionNumber"/g' **/*.json
sed -i -e 's/"vlocity_cmt__Definition__c"/"PropertySetConfig"/g' **/*.json
sed -i -e 's/"vlocity_cmt__Description__c"/"Description"/g' **/*.json
sed -i -e 's/"vlocity_cmt__IsChildCard__c": true/"OmniUiCardType": "Child"/g' **/*.json
sed -i -e 's/"vlocity_cmt__GlobalKey__c"/"OmniUiCardKey"/g' **/*.json
sed -i -e 's/"vlocity_cmt__Author__c"/"AuthorName"/g' **/*.json
sed -i -e 's/"vlocity_cmt__Styles__c"/"StylingConfiguration"/g' **/*.json
sed -i -e 's/"vlocity_cmt__SampleData__c"/"SampleDataSourceResponse"/g' **/*.json
sed -i -e 's/"vlocity_cmt__Datasource__c"/"DataSourceConfig"/g' **/*.json
rm **/*.json-e