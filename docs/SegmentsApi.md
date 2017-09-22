# SwaggerClient::SegmentsApi

All URIs are relative to *https://api.moosend.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adding_criteria_to_segments**](SegmentsApi.md#adding_criteria_to_segments) | **POST** /lists/{MailingListID}/segments/{SegmentID}/criteria/add.{Format} | Adding criteria to segments
[**creating_a_new_segment**](SegmentsApi.md#creating_a_new_segment) | **POST** /lists/{MailingListID}/segments/create.{Format} | Creating a new segment
[**deleting_a_segment**](SegmentsApi.md#deleting_a_segment) | **DELETE** /lists/{MailingListID}/segments/{SegmentID}/delete.{Format} | Deleting A Segment
[**getting_segment_details**](SegmentsApi.md#getting_segment_details) | **GET** /lists/{MailingListID}/segments/{SegmentID}/details.{Format} | Getting segment details
[**getting_segment_subscribers**](SegmentsApi.md#getting_segment_subscribers) | **GET** /lists/{MailingListID}/segments/{SegmentID}/members.{Format} | Getting segment subscribers
[**getting_segments**](SegmentsApi.md#getting_segments) | **GET** /lists/{MailingListID}/segments.{Format} | Getting segments
[**updating_a_segment**](SegmentsApi.md#updating_a_segment) | **POST** /lists/{MailingListID}/segments/{SegmentID}/update.{Format} | Updating a segment
[**updating_segment_criteria**](SegmentsApi.md#updating_segment_criteria) | **POST** /lists/{MailingListID}/segments/{SegmentID}/criteria/{CriteriaID}/update.{Format} | Updating segment criteria


# **adding_criteria_to_segments**
> AddingCriteriaToSegmentsResponse adding_criteria_to_segments(format, mailing_list_id, apikey, segment_id, body)

Adding criteria to segments

Adds a new criterion (a rule) to the specified segment.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SegmentsApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list the specified segment belongs.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

segment_id = "segment_id_example" # String | The ID of the segment to update.

body = SwaggerClient::AddingCriteriaToSegmentsRequest.new # AddingCriteriaToSegmentsRequest | 


begin
  #Adding criteria to segments
  result = api_instance.adding_criteria_to_segments(format, mailing_list_id, apikey, segment_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SegmentsApi->adding_criteria_to_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list the specified segment belongs. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **segment_id** | **String**| The ID of the segment to update. | 
 **body** | [**AddingCriteriaToSegmentsRequest**](AddingCriteriaToSegmentsRequest.md)|  | 

### Return type

[**AddingCriteriaToSegmentsResponse**](AddingCriteriaToSegmentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **creating_a_new_segment**
> CreatingANewSegmentResponse creating_a_new_segment(format, mailing_list_id, apikey, body)

Creating a new segment

Creates a new empty segment (without criteria) for the given mailing list. You may specify the name of the segment and the way the criteria will match together.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SegmentsApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list the specified segment belongs

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

body = SwaggerClient::CreatingANewSegmentRequest.new # CreatingANewSegmentRequest | 


begin
  #Creating a new segment
  result = api_instance.creating_a_new_segment(format, mailing_list_id, apikey, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SegmentsApi->creating_a_new_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list the specified segment belongs | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **body** | [**CreatingANewSegmentRequest**](CreatingANewSegmentRequest.md)|  | 

### Return type

[**CreatingANewSegmentResponse**](CreatingANewSegmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **deleting_a_segment**
> DeletingASegmentResponse deleting_a_segment(format, mailing_list_id, apikey, segment_id)

Deleting A Segment

Deletes a segment along with its criteria from the mailing list. The subscribers of the mailing list that the segment returned are not deleted or affected in any way.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SegmentsApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list the specified segment belongs.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

segment_id = "segment_id_example" # String | The ID of the segment to update.


begin
  #Deleting A Segment
  result = api_instance.deleting_a_segment(format, mailing_list_id, apikey, segment_id)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SegmentsApi->deleting_a_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list the specified segment belongs. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **segment_id** | **String**| The ID of the segment to update. | 

### Return type

[**DeletingASegmentResponse**](DeletingASegmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_segment_details**
> GettingSegmentDetailsResponse getting_segment_details(format, mailing_list_id, segment_id, apikey)

Getting segment details

Gets detailed information on a specific segment and its criteria. However, it does not include the subscribers returned by the segment.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SegmentsApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list the specified segment belongs

segment_id = "segment_id_example" # String | The ID of the segment to fetch results for.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.


begin
  #Getting segment details
  result = api_instance.getting_segment_details(format, mailing_list_id, segment_id, apikey)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SegmentsApi->getting_segment_details: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list the specified segment belongs | 
 **segment_id** | **String**| The ID of the segment to fetch results for. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 

### Return type

[**GettingSegmentDetailsResponse**](GettingSegmentDetailsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_segment_subscribers**
> GettingSegmentSubscribersResponse getting_segment_subscribers(format, mailing_list_id, segment_id, apikey)

Getting segment subscribers

Gets a list of the subscribers that the specified segment returns according to its criteria. Because the results for this call could be quite big, paging information is required as input.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SegmentsApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list the specified segment belongs

segment_id = "segment_id_example" # String | The ID of the segment to fetch results for.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.


begin
  #Getting segment subscribers
  result = api_instance.getting_segment_subscribers(format, mailing_list_id, segment_id, apikey)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SegmentsApi->getting_segment_subscribers: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list the specified segment belongs | 
 **segment_id** | **String**| The ID of the segment to fetch results for. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 

### Return type

[**GettingSegmentSubscribersResponse**](GettingSegmentSubscribersResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **getting_segments**
> GettingSegmentsResponse getting_segments(format, mailing_list_id, apikey)

Getting segments

Get a list of all segments with their criteria for the given mailing list.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SegmentsApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | 

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.


begin
  #Getting segments
  result = api_instance.getting_segments(format, mailing_list_id, apikey)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SegmentsApi->getting_segments: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**|  | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 

### Return type

[**GettingSegmentsResponse**](GettingSegmentsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **updating_a_segment**
> UpdatingASegmentResponse updating_a_segment(format, mailing_list_id, apikey, segment_id, body)

Updating a segment

Updates the properties of an existing segment. You may update the name and match type of the segment.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SegmentsApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list the specified segment belongs

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

segment_id = "segment_id_example" # String | The ID of the segment to update.

body = SwaggerClient::UpdatingASegmentRequest.new # UpdatingASegmentRequest | 


begin
  #Updating a segment
  result = api_instance.updating_a_segment(format, mailing_list_id, apikey, segment_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SegmentsApi->updating_a_segment: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list the specified segment belongs | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **segment_id** | **String**| The ID of the segment to update. | 
 **body** | [**UpdatingASegmentRequest**](UpdatingASegmentRequest.md)|  | 

### Return type

[**UpdatingASegmentResponse**](UpdatingASegmentResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **updating_segment_criteria**
> UpdatingSegmentCriteriaResponse updating_segment_criteria(format, mailing_list_id, apikey, segment_id, criteria_id, body)

Updating segment criteria

Updates an existing criterion in the specified segment.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::SegmentsApi.new

format = "format_example" # String | 

mailing_list_id = "mailing_list_id_example" # String | The ID of the mailing list the specified segment belongs.

apikey = "apikey_example" # String | You may find your API Key or generate a new one in your account settings.

segment_id = "segment_id_example" # String | The ID of the segment to update.

criteria_id = 1.2 # Float | The ID of the criterion to process.

body = SwaggerClient::UpdatingSegmentCriteriaRequest.new # UpdatingSegmentCriteriaRequest | 


begin
  #Updating segment criteria
  result = api_instance.updating_segment_criteria(format, mailing_list_id, apikey, segment_id, criteria_id, body)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling SegmentsApi->updating_segment_criteria: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **format** | **String**|  | 
 **mailing_list_id** | **String**| The ID of the mailing list the specified segment belongs. | 
 **apikey** | **String**| You may find your API Key or generate a new one in your account settings. | 
 **segment_id** | **String**| The ID of the segment to update. | 
 **criteria_id** | **Float**| The ID of the criterion to process. | 
 **body** | [**UpdatingSegmentCriteriaRequest**](UpdatingSegmentCriteriaRequest.md)|  | 

### Return type

[**UpdatingSegmentCriteriaResponse**](UpdatingSegmentCriteriaResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



