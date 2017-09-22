# SwaggerClient::SubscribersApi

All URIs are relative to *https://api.moosend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adding_multiple_subscribers**](SubscribersApi.md#adding_multiple_subscribers) | **POST** /subscribers/{MailingListID}/subscribe_many.{Format} | Adding multiple subscribers
[**adding_subscribers**](SubscribersApi.md#adding_subscribers) | **POST** /subscribers/{MailingListID}/subscribe.{Format} | Adding subscribers
[**get_subscriber_by_email_address**](SubscribersApi.md#get_subscriber_by_email_address) | **GET** /subscribers/{MailingListID}/view.{Format} | Get subscriber by email address
[**get_subscriber_by_id**](SubscribersApi.md#get_subscriber_by_id) | **GET** /subscribers/{MailingListID}/find/{SubscriberID}.{Format} | Get subscriber by id
[**getting_subscribers**](SubscribersApi.md#getting_subscribers) | **GET** /lists/{MailingListID}/subscribers/{Status}.{Format} | Getting subscribers
[**removing_a_subscriber**](SubscribersApi.md#removing_a_subscriber) | **POST** /subscribers/{MailingListID}/remove.{Format} | Removing a subscriber
[**removing_multiple_subscribers**](SubscribersApi.md#removing_multiple_subscribers) | **POST** /subscribers/{MailingListID}/remove_many.{Format} | Removing multiple subscribers
[**unsubscribing_subscribers_from_account**](SubscribersApi.md#unsubscribing_subscribers_from_account) | **POST** /subscribers/unsubscribe.{Format} | Unsubscribing subscribers from account
[**unsubscribing_subscribers_from_mailing_list**](SubscribersApi.md#unsubscribing_subscribers_from_mailing_list) | **POST** /subscribers/{MailingListID}/unsubscribe.{Format} | Unsubscribing subscribers from mailing list
[**unsubscribing_subscribers_from_mailing_list_and_a_specified_campaign**](SubscribersApi.md#unsubscribing_subscribers_from_mailing_list_and_a_specified_campaign) | **POST** /subscribers/{MailingListID}/{CampaignID}/unsubscribe.{Format} | Unsubscribing subscribers from mailing list and a specified campaign
[**updating_a_subscriber**](SubscribersApi.md#updating_a_subscriber) | **POST** /subscribers/{MailingListID}/update/{SubscriberID}.{Format} | Updating a subscriber


# **adding_multiple_subscribers**
> AddingMultipleSubscribersResponse adding_multiple_subscribers(format, apikey, mailing_list_id, body)

Adding multiple subscribers

This method allows you to add multiple subscribers in a mailing list with a single call. If some subscribers already exist with the given email addresses, they will be updated. If you try to add a subscriber with an invalid email address, this attempt will be ignored, as the process will skip to the next subscriber automatically.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to add subscribers to.

body = SwaggerClient::AddingMultipleSubscribersRequest.new # AddingMultipleSubscribersRequest | 


begin
  #Adding multiple subscribers
  result = api_instance.adding_multiple_subscribers(format, apikey, mailing_list_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->adding_multiple_subscribers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list to add subscribers to. | 
 **body** | [**AddingMultipleSubscribersRequest**](AddingMultipleSubscribersRequest.md)|  | 

### Return type

[**AddingMultipleSubscribersResponse**](AddingMultipleSubscribersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **adding_subscribers**
> AddingSubscribersResponse adding_subscribers(format, mailing_list_id, apikey, body)

Adding subscribers

Adds a new subscriber to the specified mailing list. If there is already a subscriber with the specified email address in the list, an update will be performed instead.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to add the new member.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

body = SwaggerClient::AddingSubscribersRequest.new # AddingSubscribersRequest | 


begin
  #Adding subscribers
  result = api_instance.adding_subscribers(format, mailing_list_id, apikey, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->adding_subscribers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list to add the new member. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **body** | [**AddingSubscribersRequest**](AddingSubscribersRequest.md)|  | 

### Return type

[**AddingSubscribersResponse**](AddingSubscribersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_subscriber_by_email_address**
> GetSubscriberByEmailAddressResponse get_subscriber_by_email_address(format, apikey, mailing_list_id, email)

Get subscriber by email address

Searches for a subscriber with the specified email address in the specified mailing list and returns detailed information such as id, name, date created, date unsubscribed, status and custom fields

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list where the subscriber belongs.

email = "email_example" # String | The email of the subscriber.


begin
  #Get subscriber by email address
  result = api_instance.get_subscriber_by_email_address(format, apikey, mailing_list_id, email)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->get_subscriber_by_email_address: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list where the subscriber belongs. | 
 **email** | **String**| The email of the subscriber. | 

### Return type

[**GetSubscriberByEmailAddressResponse**](GetSubscriberByEmailAddressResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_subscriber_by_id**
> GetSubscriberByIdResponse get_subscriber_by_id(format, apikey, mailing_list_id, subscriber_id)

Get subscriber by id

Searches for a subscriber with the specified unique id in the specified mailing list and returns detailed information such as email, name, date created, date unsubscribed, status and custom fields.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to search the subscriber in.

subscriber_id = "subscriber_id_example" # String | The id of the subscriber being searched.


begin
  #Get subscriber by id
  result = api_instance.get_subscriber_by_id(format, apikey, mailing_list_id, subscriber_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->get_subscriber_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list to search the subscriber in. | 
 **subscriber_id** | **String**| The id of the subscriber being searched. | 

### Return type

[**GetSubscriberByIdResponse**](GetSubscriberByIdResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_subscribers**
> GettingSubscribersResponse getting_subscribers(format, mailing_list_id, apikey, status, opts)

Getting subscribers

Gets a list of all subscribers in a given mailing list. You may filter the list by setting a date to fetch those subscribed since then and/or by their status. Because the results for this call could be quite big, paging information is required as input.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list where the subscribers belong.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

status = "status_example" # String | Specifies what type of subscriber statistics results will be returned.

opts = { 
  page: 1.2, # Float | Specifies the page of subscriber statistics results will be returned.
  page_size: 1.2 # Float | Specifies the page size of subscriber statistics results will be returned.
}

begin
  #Getting subscribers
  result = api_instance.getting_subscribers(format, mailing_list_id, apikey, status, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->getting_subscribers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list where the subscribers belong. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **status** | **String**| Specifies what type of subscriber statistics results will be returned. | 
 **page** | **Float**| Specifies the page of subscriber statistics results will be returned. | [optional] 
 **page_size** | **Float**| Specifies the page size of subscriber statistics results will be returned. | [optional] 

### Return type

[**GettingSubscribersResponse**](GettingSubscribersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **removing_a_subscriber**
> RemovingASubscriberResponse removing_a_subscriber(format, apikey, mailing_list_id, body)

Removing a subscriber

Removes a subscriber from the specified mailing list permanently (without moving to the suppression list).

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to remove the subscriber from.

body = SwaggerClient::RemovingASubscriberRequest.new # RemovingASubscriberRequest | 


begin
  #Removing a subscriber
  result = api_instance.removing_a_subscriber(format, apikey, mailing_list_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->removing_a_subscriber: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list to remove the subscriber from. | 
 **body** | [**RemovingASubscriberRequest**](RemovingASubscriberRequest.md)|  | 

### Return type

[**RemovingASubscriberResponse**](RemovingASubscriberResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **removing_multiple_subscribers**
> RemovingMultipleSubscribersResponse removing_multiple_subscribers(format, apikey, mailing_list_id, body)

Removing multiple subscribers

Removes a list of subscribers from the specified mailing list permanently (without putting them in the suppression list). Any invalid email addresses specified will be ignored.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to remove the subscribers from.

body = SwaggerClient::RemovingMultipleSubscribersRequest.new # RemovingMultipleSubscribersRequest | 


begin
  #Removing multiple subscribers
  result = api_instance.removing_multiple_subscribers(format, apikey, mailing_list_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->removing_multiple_subscribers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list to remove the subscribers from. | 
 **body** | [**RemovingMultipleSubscribersRequest**](RemovingMultipleSubscribersRequest.md)|  | 

### Return type

[**RemovingMultipleSubscribersResponse**](RemovingMultipleSubscribersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unsubscribing_subscribers_from_account**
> UnsubscribingSubscribersFromAccountResponse unsubscribing_subscribers_from_account(format, apikey, body)

Unsubscribing subscribers from account

Unsubscribes a subscriber from the account.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

body = SwaggerClient::UnsubscribingSubscribersFromAccountRequest.new # UnsubscribingSubscribersFromAccountRequest | 


begin
  #Unsubscribing subscribers from account
  result = api_instance.unsubscribing_subscribers_from_account(format, apikey, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->unsubscribing_subscribers_from_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **body** | [**UnsubscribingSubscribersFromAccountRequest**](UnsubscribingSubscribersFromAccountRequest.md)|  | 

### Return type

[**UnsubscribingSubscribersFromAccountResponse**](UnsubscribingSubscribersFromAccountResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unsubscribing_subscribers_from_mailing_list**
> UnsubscribingSubscribersFromMailingListResponse unsubscribing_subscribers_from_mailing_list(format, apikey, mailing_list_id, body)

Unsubscribing subscribers from mailing list

Unsubscribes a subscriber from the specified mailing list. The subscriber is not deleted, but moved to the suppression list.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to add subscribers to.

body = SwaggerClient::UnsubscribingSubscribersFromMailingListRequest.new # UnsubscribingSubscribersFromMailingListRequest | 


begin
  #Unsubscribing subscribers from mailing list
  result = api_instance.unsubscribing_subscribers_from_mailing_list(format, apikey, mailing_list_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->unsubscribing_subscribers_from_mailing_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list to add subscribers to. | 
 **body** | [**UnsubscribingSubscribersFromMailingListRequest**](UnsubscribingSubscribersFromMailingListRequest.md)|  | 

### Return type

[**UnsubscribingSubscribersFromMailingListResponse**](UnsubscribingSubscribersFromMailingListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **unsubscribing_subscribers_from_mailing_list_and_a_specified_campaign**
> UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignResponse unsubscribing_subscribers_from_mailing_list_and_a_specified_campaign(format, campaign_id, apikey, mailing_list_id, body)

Unsubscribing subscribers from mailing list and a specified campaign

Unsubscribes a subscriber from the specified mailing list and the specified campaign. The subscriber is not deleted, but moved to the suppression list.  This call will take into account the setting you have in \"suppression list and unsubscribe settings\" and will remove the subscriber from all other mailing lists or not accordingly.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

campaign_id = "campaign_id_example" # String | The ID of the campaign that was sent to the specific mailing list.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to remove the subscriber from.

body = SwaggerClient::UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignRequest.new # UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignRequest | 


begin
  #Unsubscribing subscribers from mailing list and a specified campaign
  result = api_instance.unsubscribing_subscribers_from_mailing_list_and_a_specified_campaign(format, campaign_id, apikey, mailing_list_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->unsubscribing_subscribers_from_mailing_list_and_a_specified_campaign: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **campaign_id** | **String**| The ID of the campaign that was sent to the specific mailing list. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list to remove the subscriber from. | 
 **body** | [**UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignRequest**](UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignRequest.md)|  | 

### Return type

[**UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignResponse**](UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **updating_a_subscriber**
> UpdatingASubscriberResponse updating_a_subscriber(format, apikey, mailing_list_id, subscriber_id, body)

Updating a subscriber

Updates a subscriber in the specified mailing list. You can even update the subscribers email, if he has not unsubscribed.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SubscribersApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list that contains the subscriber

subscriber_id = "subscriber_id_example" # String | The id of the subscriber to be updated

body = SwaggerClient::UpdatingASubscriberRequest.new # UpdatingASubscriberRequest | 


begin
  #Updating a subscriber
  result = api_instance.updating_a_subscriber(format, apikey, mailing_list_id, subscriber_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SubscribersApi->updating_a_subscriber: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list that contains the subscriber | 
 **subscriber_id** | **String**| The id of the subscriber to be updated | 
 **body** | [**UpdatingASubscriberRequest**](UpdatingASubscriberRequest.md)|  | 

### Return type

[**UpdatingASubscriberResponse**](UpdatingASubscriberResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



