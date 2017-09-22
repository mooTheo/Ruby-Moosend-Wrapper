# SwaggerClient::CampaignsApi

All URIs are relative to *https://api.moosend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**a_b_test_campaign_summary**](CampaignsApi.md#a_b_test_campaign_summary) | **GET** /campaigns/{CampaignID}/view_ab_summary.{Format} | AB Test Campaign Summary
[**activity_by_location**](CampaignsApi.md#activity_by_location) | **GET** /campaigns/{CampaignID}/stats/countries.{Format} | Activity By Location
[**campaign_summary**](CampaignsApi.md#campaign_summary) | **GET** /campaigns/{CampaignID}/view_summary.{Format} | Campaign Summary
[**cloning_an_existing_campaign**](CampaignsApi.md#cloning_an_existing_campaign) | **POST** /campaigns/{CampaignID}/clone.{Format} | Cloning An Existing Campaign
[**creating_a_draft_campaign**](CampaignsApi.md#creating_a_draft_campaign) | **POST** /campaigns/create.{Format} | Creating A Draft Campaign
[**deleting_a_campaign**](CampaignsApi.md#deleting_a_campaign) | **DELETE** /campaigns/{CampaignID}/delete.{Format} | Deleting A Campaign
[**get_all_campaigns**](CampaignsApi.md#get_all_campaigns) | **GET** /campaigns.{Format} | Get All Campaigns
[**get_campaign_statistics_with_paging__filtered**](CampaignsApi.md#get_campaign_statistics_with_paging__filtered) | **GET** /campaigns/{CampaignID}/stats/{Type}.{Format} | Get Campaign Statistics With Paging &amp; Filtered
[**get_campaigns_by_page**](CampaignsApi.md#get_campaigns_by_page) | **GET** /campaigns/{Page}.{Format} | Get Campaigns By Page
[**get_campaigns_by_page_and_pagesize**](CampaignsApi.md#get_campaigns_by_page_and_pagesize) | **GET** /campaigns/{Page}/{PageSize}.{Format} | Get Campaigns By Page And Pagesize
[**getting_all_your_senders**](CampaignsApi.md#getting_all_your_senders) | **GET** /senders/find_all.{Format} | Getting All Your Senders
[**getting_campaign_details**](CampaignsApi.md#getting_campaign_details) | **GET** /campaigns/{CampaignID}/view.{Format} | Getting Campaign Details
[**getting_sender_details**](CampaignsApi.md#getting_sender_details) | **GET** /senders/find_one.{Format} | Getting Sender Details
[**link_activity**](CampaignsApi.md#link_activity) | **GET** /campaigns/{CampaignID}/stats/links.{Format} | Link Activity
[**scheduling_a_campaign**](CampaignsApi.md#scheduling_a_campaign) | **POST** /campaigns/{CampaignID}/schedule.{Format} | Scheduling A Campaign
[**sending_a_campaign**](CampaignsApi.md#sending_a_campaign) | **POST** /campaigns/{CampaignID}/send.{Format} | Sending a campaign
[**testing_a_campaign**](CampaignsApi.md#testing_a_campaign) | **POST** /campaigns/{CampaignID}/send_test.{Format} | Testing a campaign
[**unscheduling_a_campaign**](CampaignsApi.md#unscheduling_a_campaign) | **POST** /campaigns/{CampaignID}/unschedule.{Format} | Unscheduling a campaign
[**updating_a_draft_campaign**](CampaignsApi.md#updating_a_draft_campaign) | **POST** /campaigns/{CampaignID}/update.{Format} | Updating A Draft Campaign


# **a_b_test_campaign_summary**
> AbTestCampaignSummaryResponse a_b_test_campaign_summary(format, apikey, campaign_id)

AB Test Campaign Summary

Provides a basic summary of the results for a sent AB test campaign, separately for each version (A and B), such as the number of recipients, opens, clicks, bounces, unsubscribes, forwards etc to date.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the requested AB test campaign


begin
  #AB Test Campaign Summary
  result = api_instance.a_b_test_campaign_summary(format, apikey, campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->a_b_test_campaign_summary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the requested AB test campaign | 

### Return type

[**AbTestCampaignSummaryResponse**](AbTestCampaignSummaryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **activity_by_location**
> ActivityByLocationResponse activity_by_location(format, apikey, campaign_id)

Activity By Location

Returns a detailed report of your campaign opens (unique and total) by country.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the requested campaign


begin
  #Activity By Location
  result = api_instance.activity_by_location(format, apikey, campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->activity_by_location: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the requested campaign | 

### Return type

[**ActivityByLocationResponse**](ActivityByLocationResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **campaign_summary**
> CampaignSummaryResponse campaign_summary(format, apikey, campaign_id)

Campaign Summary

Provides a basic summary of the results for any sent campaign such as the number of recipients, opens, clicks, bounces, unsubscribes, forwards etc. to date.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the requested campaign


begin
  #Campaign Summary
  result = api_instance.campaign_summary(format, apikey, campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->campaign_summary: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the requested campaign | 

### Return type

[**CampaignSummaryResponse**](CampaignSummaryResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **cloning_an_existing_campaign**
> CloningAnExistingCampaignResponse cloning_an_existing_campaign(format, campaign_id, apikey)

Cloning An Existing Campaign

Creates an exact copy of an existing campaign. The new campaign is created as a draft.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

campaign_id = "campaign_id_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.


begin
  #Cloning An Existing Campaign
  result = api_instance.cloning_an_existing_campaign(format, campaign_id, apikey)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->cloning_an_existing_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **campaign_id** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 

### Return type

[**CloningAnExistingCampaignResponse**](CloningAnExistingCampaignResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **creating_a_draft_campaign**
> CreatingADraftCampaignResponse creating_a_draft_campaign(format, apikey, body)

Creating A Draft Campaign

Creates a new campaign in your account. This method does not send the campaign, but rather creates it as a draft, ready for sending or testing.  You can choose to send either a regular campaign or an AB split campaign. Campaign content must be specified from a web location.  Ignore ***(A/B Split Campaign Option)*** if you want to create a regular campaign.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

body = SwaggerClient::CreatingADraftCampaignRequest.new # CreatingADraftCampaignRequest | 


begin
  #Creating A Draft Campaign
  result = api_instance.creating_a_draft_campaign(format, apikey, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->creating_a_draft_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **body** | [**CreatingADraftCampaignRequest**](CreatingADraftCampaignRequest.md)|  | 

### Return type

[**CreatingADraftCampaignResponse**](CreatingADraftCampaignResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **deleting_a_campaign**
> DeletingACampaignResponse deleting_a_campaign(format, apikey, campaign_id)

Deleting A Campaign

Deletes a campaign from your account, draft or even sent.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the draft campaign to update.


begin
  #Deleting A Campaign
  result = api_instance.deleting_a_campaign(format, apikey, campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->deleting_a_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the draft campaign to update. | 

### Return type

[**DeletingACampaignResponse**](DeletingACampaignResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_all_campaigns**
> GetAllCampaignsResponse get_all_campaigns(format, apikey)

Get All Campaigns

Returns a list of all campaigns in your account with detailed information. Because the results for this call could be quite big, paging information is required as input.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.


begin
  #Get All Campaigns
  result = api_instance.get_all_campaigns(format, apikey)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_all_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 

### Return type

[**GetAllCampaignsResponse**](GetAllCampaignsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_campaign_statistics_with_paging__filtered**
> GetCampaignStatisticsWithPagingFilteredResponse get_campaign_statistics_with_paging__filtered(format, apikey, campaign_id, type, opts)

Get Campaign Statistics With Paging & Filtered

Returns a detailed list of statistics for a given campaign based on activity such as emails sent, opened, bounced, link clicked, etc.  Because the results for this call could be quite big, paging information is required as input.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the requested AB test campaign

type = "type_example" # String | The type of the activity to display results for. This must be one of the following values : * Sent : To get information about when and to which recipients the campaign was sent. * Opened : To get information about who opened the campaign. * LinkClicked : To get information about who clicked on which link. * Forward : To get information about who forwarded the campaign using the relevant link on the email body and when. * Unsubscribed : To get information about who unsubscribed from the campaign by clicking on the unsubscribe link and when. * Bounced : To get information about which email recipients failed to receive the campaign. If not specified, the value Sent will be used by default.

opts = { 
  page: "page_example", # String | The page number to display results for. If not specified, the first page will be returned.
  page_size: "page_size_example", # String | The maximum number of results per page. This must be a positive integer up to 100. If not specified, 50 results per page will be returned.  If a value greater than 100 is specified, it will be treated as 100.
  from: "from_example", # String | A date value that specifies since when to start returning results. If omitted, results will be returned from the moment the campaign was sent.
  to: "to_example" # String | A date value that specifies up to when to return results. If omitted, results will be returned up to date.
}

begin
  #Get Campaign Statistics With Paging & Filtered
  result = api_instance.get_campaign_statistics_with_paging__filtered(format, apikey, campaign_id, type, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaign_statistics_with_paging__filtered: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the requested AB test campaign | 
 **type** | **String**| The type of the activity to display results for. This must be one of the following values : * Sent : To get information about when and to which recipients the campaign was sent. * Opened : To get information about who opened the campaign. * LinkClicked : To get information about who clicked on which link. * Forward : To get information about who forwarded the campaign using the relevant link on the email body and when. * Unsubscribed : To get information about who unsubscribed from the campaign by clicking on the unsubscribe link and when. * Bounced : To get information about which email recipients failed to receive the campaign. If not specified, the value Sent will be used by default. | 
 **page** | **String**| The page number to display results for. If not specified, the first page will be returned. | [optional] 
 **page_size** | **String**| The maximum number of results per page. This must be a positive integer up to 100. If not specified, 50 results per page will be returned.  If a value greater than 100 is specified, it will be treated as 100. | [optional] 
 **from** | **String**| A date value that specifies since when to start returning results. If omitted, results will be returned from the moment the campaign was sent. | [optional] 
 **to** | **String**| A date value that specifies up to when to return results. If omitted, results will be returned up to date. | [optional] 

### Return type

[**GetCampaignStatisticsWithPagingFilteredResponse**](GetCampaignStatisticsWithPagingFilteredResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_campaigns_by_page**
> GetCampaignsByPageResponse get_campaigns_by_page(format, apikey, page)

Get Campaigns By Page

Returns a list of all campaigns in your account with detailed information. Because the results for this call could be quite big, paging information is required as input.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

page = 1.2 # Float | The page number to display results for.


begin
  #Get Campaigns By Page
  result = api_instance.get_campaigns_by_page(format, apikey, page)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaigns_by_page: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **page** | **Float**| The page number to display results for. | 

### Return type

[**GetCampaignsByPageResponse**](GetCampaignsByPageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_campaigns_by_page_and_pagesize**
> GetCampaignsByPageAndPagesizeResponse get_campaigns_by_page_and_pagesize(format, apikey, page, page_size, opts)

Get Campaigns By Page And Pagesize

Returns a list of all campaigns in your account with detailed information. Because the results for this call could be quite big, paging information is required as input.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

page = 1.2 # Float | The page number to display results for.

page_size = 1.2 # Float | The maximum number of results per page.  This must be a positive integer up to 100. If not specified, 50 results per page will be returned.  If a value greater than 100 is specified, it will be treated as 100.

opts = { 
  short_by: "short_by_example", # String | The name of the campaign property to sort results by. If not specified, results will be sorted by the CreatedOn property
  sort_method: "sort_method_example" # String | The method to sort results: ASC for ascending, DESC for descending. If not specified, `ASC` will be assumed
}

begin
  #Get Campaigns By Page And Pagesize
  result = api_instance.get_campaigns_by_page_and_pagesize(format, apikey, page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->get_campaigns_by_page_and_pagesize: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **page** | **Float**| The page number to display results for. | 
 **page_size** | **Float**| The maximum number of results per page.  This must be a positive integer up to 100. If not specified, 50 results per page will be returned.  If a value greater than 100 is specified, it will be treated as 100. | 
 **short_by** | **String**| The name of the campaign property to sort results by. If not specified, results will be sorted by the CreatedOn property | [optional] 
 **sort_method** | **String**| The method to sort results: ASC for ascending, DESC for descending. If not specified, &#x60;ASC&#x60; will be assumed | [optional] 

### Return type

[**GetCampaignsByPageAndPagesizeResponse**](GetCampaignsByPageAndPagesizeResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_all_your_senders**
> GettingAllYourSendersResponse getting_all_your_senders(format, apikey)

Getting All Your Senders

Gets a list of your active senders in your account. You may specify any email address of these senders when sending a campaign.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.


begin
  #Getting All Your Senders
  result = api_instance.getting_all_your_senders(format, apikey)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->getting_all_your_senders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 

### Return type

[**GettingAllYourSendersResponse**](GettingAllYourSendersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_campaign_details**
> GettingCampaignDetailsResponse getting_campaign_details(format, apikey, campaign_id)

Getting Campaign Details

Returns a complete set of properties that describe the requested campaign in detail. No statistics are included in the result.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the requested campaign


begin
  #Getting Campaign Details
  result = api_instance.getting_campaign_details(format, apikey, campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->getting_campaign_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the requested campaign | 

### Return type

[**GettingCampaignDetailsResponse**](GettingCampaignDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_sender_details**
> GettingSenderDetailsResponse getting_sender_details(format, email, apikey)

Getting Sender Details

Returns basic information for the specified sender identified by its email address.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

email = "email_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.


begin
  #Getting Sender Details
  result = api_instance.getting_sender_details(format, email, apikey)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->getting_sender_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **email** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 

### Return type

[**GettingSenderDetailsResponse**](GettingSenderDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **link_activity**
> LinkActivityResponse link_activity(format, apikey, campaign_id)

Link Activity

Returns a list with your campaign links and how many clicks have been made by your recipients, either unique or total.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the requested campaign


begin
  #Link Activity
  result = api_instance.link_activity(format, apikey, campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->link_activity: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the requested campaign | 

### Return type

[**LinkActivityResponse**](LinkActivityResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **scheduling_a_campaign**
> SchedulingACampaignResponse scheduling_a_campaign(format, apikey, campaign_id, body)

Scheduling A Campaign

Assigns a scheduled date and time at which the campaign will be delivered.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the campaign to be scheduled

body = SwaggerClient::SchedulingACampaignRequest.new # SchedulingACampaignRequest | 


begin
  #Scheduling A Campaign
  result = api_instance.scheduling_a_campaign(format, apikey, campaign_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->scheduling_a_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the campaign to be scheduled | 
 **body** | [**SchedulingACampaignRequest**](SchedulingACampaignRequest.md)|  | 

### Return type

[**SchedulingACampaignResponse**](SchedulingACampaignResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **sending_a_campaign**
> SendingACampaignResponse sending_a_campaign(format, apikey, campaign_id)

Sending a campaign

Sends an existing draft campaign to all recipients specified in its mailing list. The campaign is sent immediatelly.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the draft campaign to be sent.


begin
  #Sending a campaign
  result = api_instance.sending_a_campaign(format, apikey, campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->sending_a_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the draft campaign to be sent. | 

### Return type

[**SendingACampaignResponse**](SendingACampaignResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **testing_a_campaign**
> TestingACampaignResponse testing_a_campaign(format, apikey, campaign_id, body)

Testing a campaign

Sends a test email of a draft campaign to a list of email addresses you specify for previewing.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the draft campaign to be tested.

body = SwaggerClient::TestingACampaignRequest.new # TestingACampaignRequest | 


begin
  #Testing a campaign
  result = api_instance.testing_a_campaign(format, apikey, campaign_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->testing_a_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the draft campaign to be tested. | 
 **body** | [**TestingACampaignRequest**](TestingACampaignRequest.md)|  | 

### Return type

[**TestingACampaignResponse**](TestingACampaignResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unscheduling_a_campaign**
> UnschedulingACampaignResponse unscheduling_a_campaign(format, apikey, campaign_id)

Unscheduling a campaign

Removes a previously defined scheduled date and time from a campaign, so that it will be delivered immediately if already queued or when sent.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the campaign to be scheduled


begin
  #Unscheduling a campaign
  result = api_instance.unscheduling_a_campaign(format, apikey, campaign_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->unscheduling_a_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the campaign to be scheduled | 

### Return type

[**UnschedulingACampaignResponse**](UnschedulingACampaignResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **updating_a_draft_campaign**
> UpdatingADraftCampaignResponse updating_a_draft_campaign(format, apikey, campaign_id, body)

Updating A Draft Campaign

Updates properties of an existing draft A/B campaign in your account. Non-draft campaigns cannot be updated. Ignore ***(A/B Split Campaign Option)*** if you want to create a regular campaign.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::CampaignsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

campaign_id = "campaign_id_example" # String | The ID of the draft campaign to update.

body = SwaggerClient::UpdatingADraftCampaignRequest.new # UpdatingADraftCampaignRequest | 


begin
  #Updating A Draft Campaign
  result = api_instance.updating_a_draft_campaign(format, apikey, campaign_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling CampaignsApi->updating_a_draft_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **campaign_id** | **String**| The ID of the draft campaign to update. | 
 **body** | [**UpdatingADraftCampaignRequest**](UpdatingADraftCampaignRequest.md)|  | 

### Return type

[**UpdatingADraftCampaignResponse**](UpdatingADraftCampaignResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



