# SwaggerClient::MailingListsApi

All URIs are relative to *https://api.moosend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**creating_a_custom_field**](MailingListsApi.md#creating_a_custom_field) | **POST** /lists/{MailingListID}/customfields/create.{Format} | Creating a custom field
[**creating_a_mailing_list**](MailingListsApi.md#creating_a_mailing_list) | **POST** /lists/create.{Format} | Creating a mailing list
[**deleting_a_mailing_list**](MailingListsApi.md#deleting_a_mailing_list) | **DELETE** /lists/{MailingListID}/delete.{Format} | Deleting a mailing list
[**getting_all_active_mailing_lists**](MailingListsApi.md#getting_all_active_mailing_lists) | **GET** /lists.{Format} | Getting all active mailing lists
[**getting_all_active_mailing_lists_with_paging**](MailingListsApi.md#getting_all_active_mailing_lists_with_paging) | **GET** /lists/{Page}/{PageSize}.{Format} | Getting all active mailing lists with paging
[**getting_mailing_list_details**](MailingListsApi.md#getting_mailing_list_details) | **GET** /lists/{MailingListID}/details.{Format} | Getting mailing list details
[**removing_a_custom_field**](MailingListsApi.md#removing_a_custom_field) | **DELETE** /lists/{MailingListID}/customfields/{CustomFieldID}/delete.{Format} | Removing a custom field
[**updating_a_custom_field**](MailingListsApi.md#updating_a_custom_field) | **POST** /lists/{MailingListID}/customfields/{CustomFieldID}/update.{Format} | Updating a custom field
[**updating_a_mailing_list**](MailingListsApi.md#updating_a_mailing_list) | **POST** /lists/{MailingListID}/update.{Format} | Updating a mailing list


# **creating_a_custom_field**
> CreatingACustomFieldResponse creating_a_custom_field(format, apikey, mailing_list_id, body)

Creating a custom field

Creates a new custom field in the specified mailing list.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MailingListsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list where the custom field will belong.

body = SwaggerClient::CreatingACustomFieldRequest.new # CreatingACustomFieldRequest | 


begin
  #Creating a custom field
  result = api_instance.creating_a_custom_field(format, apikey, mailing_list_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailingListsApi->creating_a_custom_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list where the custom field will belong. | 
 **body** | [**CreatingACustomFieldRequest**](CreatingACustomFieldRequest.md)|  | 

### Return type

[**CreatingACustomFieldResponse**](CreatingACustomFieldResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **creating_a_mailing_list**
> CreatingAMailingListResponse creating_a_mailing_list(format, apikey, body)

Creating a mailing list

Creates a new empty mailing list in your account.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MailingListsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

body = SwaggerClient::CreatingAMailingListRequest.new # CreatingAMailingListRequest | 


begin
  #Creating a mailing list
  result = api_instance.creating_a_mailing_list(format, apikey, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailingListsApi->creating_a_mailing_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **body** | [**CreatingAMailingListRequest**](CreatingAMailingListRequest.md)|  | 

### Return type

[**CreatingAMailingListResponse**](CreatingAMailingListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **deleting_a_mailing_list**
> DeletingAMailingListResponse deleting_a_mailing_list(format, apikey, mailing_list_id)

Deleting a mailing list

Deletes a mailing list from your account.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MailingListsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to be deleted.


begin
  #Deleting a mailing list
  result = api_instance.deleting_a_mailing_list(format, apikey, mailing_list_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailingListsApi->deleting_a_mailing_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list to be deleted. | 

### Return type

[**DeletingAMailingListResponse**](DeletingAMailingListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_all_active_mailing_lists**
> GettingAllActiveMailingListsResponse getting_all_active_mailing_lists(format, apikey, opts)

Getting all active mailing lists

Gets a list of your active mailing lists in your account.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MailingListsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

opts = { 
  with_statistics: "with_statistics_example", # String | Specifies whether to fetch statistics for the subscribers or not. If omitted, results will be returned with statistics by default.
  short_by: "short_by_example", # String | The name of the campaign property to sort results by. If not specified, results will be sorted by the CreatedOn property
  sort_method: "sort_method_example" # String | The method to sort results: ASC for ascending, DESC for descending. If not specified, `ASC` will be assumed
}

begin
  #Getting all active mailing lists
  result = api_instance.getting_all_active_mailing_lists(format, apikey, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailingListsApi->getting_all_active_mailing_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **with_statistics** | **String**| Specifies whether to fetch statistics for the subscribers or not. If omitted, results will be returned with statistics by default. | [optional] 
 **short_by** | **String**| The name of the campaign property to sort results by. If not specified, results will be sorted by the CreatedOn property | [optional] 
 **sort_method** | **String**| The method to sort results: ASC for ascending, DESC for descending. If not specified, &#x60;ASC&#x60; will be assumed | [optional] 

### Return type

[**GettingAllActiveMailingListsResponse**](GettingAllActiveMailingListsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_all_active_mailing_lists_with_paging**
> GettingAllActiveMailingListsWithPagingResponse getting_all_active_mailing_lists_with_paging(format, apikey, page, page_size, opts)

Getting all active mailing lists with paging

Gets a list of your active mailing lists in your account. Because the results for this call could be quite big, paging information is required as input.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MailingListsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

page = 1.2 # Float | The page that you want to get.

page_size = 1.2 # Float | Lists Per Page.

opts = { 
  short_by: "short_by_example", # String | The name of the campaign property to sort results by. If not specified, results will be sorted by the CreatedOn property
  sort_method: "sort_method_example" # String | The method to sort results: ASC for ascending, DESC for descending. If not specified, `ASC` will be assumed
}

begin
  #Getting all active mailing lists with paging
  result = api_instance.getting_all_active_mailing_lists_with_paging(format, apikey, page, page_size, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailingListsApi->getting_all_active_mailing_lists_with_paging: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **page** | **Float**| The page that you want to get. | 
 **page_size** | **Float**| Lists Per Page. | 
 **short_by** | **String**| The name of the campaign property to sort results by. If not specified, results will be sorted by the CreatedOn property | [optional] 
 **sort_method** | **String**| The method to sort results: ASC for ascending, DESC for descending. If not specified, &#x60;ASC&#x60; will be assumed | [optional] 

### Return type

[**GettingAllActiveMailingListsWithPagingResponse**](GettingAllActiveMailingListsWithPagingResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_mailing_list_details**
> GettingMailingListDetailsResponse getting_mailing_list_details(format, mailing_list_id, apikey, opts)

Getting mailing list details

Gets details for a given mailing list. You may include subscriber statistics in your results or not. Any segments existing for the requested mailing list will not be included in the results.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MailingListsApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to be returned.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

opts = { 
  with_statistics: "with_statistics_example" # String | Specifies whether to fetch statistics for the subscribers or not. If omitted, results will be returned with statistics by default.
}

begin
  #Getting mailing list details
  result = api_instance.getting_mailing_list_details(format, mailing_list_id, apikey, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailingListsApi->getting_mailing_list_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list to be returned. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **with_statistics** | **String**| Specifies whether to fetch statistics for the subscribers or not. If omitted, results will be returned with statistics by default. | [optional] 

### Return type

[**GettingMailingListDetailsResponse**](GettingMailingListDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **removing_a_custom_field**
> RemovingACustomFieldResponse removing_a_custom_field(format, custom_field_id, apikey, mailing_list_id)

Removing a custom field

Removes a custom field definition from the specified mailing list.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MailingListsApi.new

format = "format_example" # String | 

custom_field_id = "custom_field_id_example" # String | The ID of the custom field to be deleted.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list where the custom field belongs.


begin
  #Removing a custom field
  result = api_instance.removing_a_custom_field(format, custom_field_id, apikey, mailing_list_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailingListsApi->removing_a_custom_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **custom_field_id** | **String**| The ID of the custom field to be deleted. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list where the custom field belongs. | 

### Return type

[**RemovingACustomFieldResponse**](RemovingACustomFieldResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **updating_a_custom_field**
> UpdatingACustomFieldResponse updating_a_custom_field(format, custom_field_id, apikey, mailing_list_id, body)

Updating a custom field

Updates the properties of an existing custom field in the specified mailing list.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MailingListsApi.new

format = "format_example" # String | 

custom_field_id = "custom_field_id_example" # String | The ID of the custom field to be updated.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list where the custom field belongs.

body = SwaggerClient::UpdatingACustomFieldRequest.new # UpdatingACustomFieldRequest | 


begin
  #Updating a custom field
  result = api_instance.updating_a_custom_field(format, custom_field_id, apikey, mailing_list_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailingListsApi->updating_a_custom_field: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **custom_field_id** | **String**| The ID of the custom field to be updated. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list where the custom field belongs. | 
 **body** | [**UpdatingACustomFieldRequest**](UpdatingACustomFieldRequest.md)|  | 

### Return type

[**UpdatingACustomFieldResponse**](UpdatingACustomFieldResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **updating_a_mailing_list**
> UpdatingAMailingListResponse updating_a_mailing_list(format, apikey, mailing_list_id, body)

Updating a mailing list

Updates the properties of an existing mailing list.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::MailingListsApi.new

format = "format_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list to be updated.

body = SwaggerClient::UpdatingAMailingListRequest.new # UpdatingAMailingListRequest | 


begin
  #Updating a mailing list
  result = api_instance.updating_a_mailing_list(format, apikey, mailing_list_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MailingListsApi->updating_a_mailing_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **mailing_list_id** | **String**| The ID of the mailing list to be updated. | 
 **body** | [**UpdatingAMailingListRequest**](UpdatingAMailingListRequest.md)|  | 

### Return type

[**UpdatingAMailingListResponse**](UpdatingAMailingListResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



