# Notes on Standard Runtime


The /vlocity folder includes the datapacks as extracted from the Summer 23 SFI package. There are some code changes to the datapacks (changing config of DataRaptors 
for meet Omnistudio Metadata naming requirements).

## Steps taken:

1. Data Packs downloaded and configured as per docs.
2. Data packs deployed into org (Omnistudio enabled version).
3. SF Metadata not deployed as new versions required for Standard Runtime (included in repo).
4. Updates to VIP, DR, Flex Card and OS done directly then exported using SFDX Metadata.

## What is configured

Order page (Quote and Opportunity not configured yet). Flex Cards (Omniscripts not refactored yet).

Note: The default tab for Order is changed to the Catalog Tab as opposed to the Cart tab. This makes more sense for most workflows. This means that the cpqEventOrchestratorUtil component is on the catalog page as opposed to the cart page as it needs to be there on the initial page load.

Note: Labels have not been used in Lightning App Builder for things like Tab names. If translations are required it may make sense to use labels instead.


## Standard Runtime CPQ App:

Application: Indsutries_Standard_CPQ

Flexipagse: 
- Standard_CPQ_Order
- Standard_CPQ_Quote
- Standard_CPQ_Opportunity


