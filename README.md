Forked from slumos/njones-marketo, which is in turn forked from njones/marketo_gem.

##  Changes:

1. Lock the dependency of savon to version 0.8.3. Because in the latest version of savon, Savon.configuration is removed. Therefore the gem does not work with the latest version of savon.

2. Change the get_lead method of Client. According to the documentation, get_lead should return only one lead. However, when there are several records with the same email address, an array of leads are returned. The old get_lead method could not handle the array of leads. 

3. Add a to_s method to lead_record to make a quick peek of record easier.
