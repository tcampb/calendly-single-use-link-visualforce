# Calendly Single Use Link Visualforce Component
Dynamically generate single use Calendly links from your Salesforce email templates.

* [Production Package Link](https://login.salesforce.com/packaging/installPackage.apexp?p0=04tDo000000Dioi&isdtp=p1)
* [Sandbox Package Link](https://test.salesforce.com/packaging/installPackage.apexp?p0=04tDo000000Dioi&isdtp=p1)

[Tutorial Video](https://youtu.be/h-JlCJNpDxE)

```visualforce
<messaging:emailTemplate subject="Calendly Meeting Link" recipientType="Lead">
<messaging:plainTextEmailBody>
   Schedule an event using the link below:

   <c:CalendlySingleUseLink eventTypeUUID="{!$User.Managed_Event_Type_UUID__c}"></c:CalendlySingleUseLink>
</messaging:emailTemplate>
</messaging:plainTextEmailBody>
```
