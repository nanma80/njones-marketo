Forked from slumos/njones-marketo, which is in turn forked from njones/marketo_gem.

##  Changes:

1. Lock the dependency of savon to version 0.8.3. Because in the latest version of savon, Savon.configuration is removed. Therefore the gem does not work with the latest version of savon.

2. Change the get\_lead method of Client. According to the documentation, get\_lead should return only one lead. However, when there are several records with the same email address, an array of leads are returned. The old get_lead method could not handle the array of leads. 

3. Add a to\_s method to lead_record to make a quick peek of record easier.

## Usage:

In Gemfile:

    gem 'njones-marketo', :github => 'nanma80/njones-marketo', :branch => 'njones-marketo'

In ruby file:

    require 'njones-marketo'

    access_key = "............."
    secret_key = "..........."

    client = Rapleaf::Marketo.new_client(access_key, secret_key, '2.0', 'na-g')

    puts client.get_lead_by_email('xxx@example.com')

    puts client.get_leads(:batchSize => 10)

    options_xml = <<XMLTEXT
    <startPosition>
      <latestCreatedAt xsi:nil="true"/>
      <oldestCreatedAt xsi:nil="true"/>
      <activityCreatedAt>2013-02-01T10:00:00+00:00</activityCreatedAt>
      <offset xsi:nil="true"/>
    </startPosition>
    <activityFilter>
      <includeTypes>
        <activityType>SendEmail</activityType>
      </includeTypes>
      <excludeTypes/>
    </activityFilter>
    <batchSize>10</batchSize> 
    XMLTEXT

    response = client.get_lead_changes(options_xml)


In command line:

    bundle install

    bundle exec ruby xxxx.rb