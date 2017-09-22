# Moosend Ruby Wrapper

The following project is a Ruby implementation of the Moosend V3 API.
You can find the API documentation at http://docs.moosendapp.apiary.io/#

### Install from Git

    gem 'moosend-api', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'moosend-api'

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

## Documentation for API Endpoints

## *CampaignsApi*
Class | Method 
------------ | ------------- 
[**GetAllCampaigns**](docs/CampaignsApi.md#getallcampaigns) | Returns a list of all campaigns in your account with detailed information.  
[**GetCampaignsByPage**](docs/CampaignsApi.md#getcampaignsbypage) | Returns a list of all campaigns in your account with detailed information, paging information is required as input.
[**GetCampaignsByPageAndPagesize**](docs/CampaignsApi.md#getcampaignsbypageandpagesize) | Returns a list of all campaigns in your account with detailed information, paging information is required as input.
[**GettingCampaignDetails**](docs/CampaignsApi.md#gettingcampaigndetails) | Returns a complete set of properties that describe the requested campaign in detail.  
[**GettingSenderDetails**](docs/CampaignsApi.md#gettingsenderdetails) | Returns basic information for the specified sender identified by its email address.
[**CloningAnExistingCampaign**](docs/CampaignsApi.md#cloninganexistingcampaign) | Creates an exact copy of an existing campaign. The new campaign is created as a draft.
[**CreatingADraftCampaign**](docs/CampaignsApi.md#creatingadraftcampaign) | Creates a new campaign in your account. This method does not send the campaign, but rather creates it as a draft, ready for sending or testing. 
[**UpdatingADraftCampaign**](docs/CampaignsApi.md#updatingadraftcampaign) | Updates properties of an existing draft A/B campaign in your account. Non-draft campaigns cannot be updated. 
[**DeletingACampaign**](docs/CampaignsApi.md#deletingacampaign) | Deletes a campaign from your account, draft or even sent.
[**TestingACampaign**](docs/CampaignsApi.md#testingacampaign) | Sends a test email of a draft campaign to a list of email addresses you specify for previewing.
[**SendingACampaign**](docs/CampaignsApi.md#sendingacampaign) | Sends an existing draft campaign to all recipients specified in its mailing list. The campaign is sent immediatelly.
[**ABTestCampaignSummary**](docs/CampaignsApi.md#abtestcampaignsummary) |  Provides a basic summary of the results for a sent AB test campaign, separately for each version (A and B), such as the number of recipients, opens, clicks, bounces, unsubscribes, forwards etc to date.
[**ActivityByLocation**](docs/CampaignsApi.md#activitybylocation) |  Returns a detailed report of your campaign opens (unique and total) by country.
[**CampaignSummary**](docs/CampaignsApi.md#campaignsummary) | Provides a basic summary of the results for any sent campaign such as the number of recipients, opens, clicks, bounces, unsubscribes, forwards etc. to date.
[**GettingAllYourSenders**](docs/CampaignsApi.md#gettingallyoursenders) | Gets a list of your active senders in your account. You may specify any email address of these senders when sending a campaign.
[**LinkActivity**](docs/CampaignsApi.md#linkactivity) | Returns a list with your campaign links and how many clicks have been made by your recipients, either unique or total.
[**SchedulingACampaign**](docs/CampaignsApi.md#schedulingacampaign) | Assigns a scheduled date and time at which the campaign will be delivered.
[**UnschedulingACampaign**](docs/CampaignsApi.md#unschedulingacampaign) | Removes a previously defined scheduled date and time from a campaign, so that it will be delivered immediately if already queued or when sent.

## *MailingListsApi*
Class | Method 
------------ | ------------- 
[**CreatingACustomField**](docs/MailingListsApi.md#creatingacustomfield) | Creates a new custom field in the specified mailing list.
[**CreatingAMailingList**](docs/MailingListsApi.md#creatingamailinglist) | Creates a new empty mailing list in your account.
[**DeletingAMailingList**](docs/MailingListsApi.md#deletingamailinglist) | Deletes a mailing list from your account.
[**GettingAllActiveMailingLists**](docs/MailingListsApi.md#gettingallactivemailinglists) | Gets a list of your active mailing lists in your account.
[**GettingAllActiveMailingListsWithPaging**](docs/MailingListsApi.md#gettingallactivemailinglistswithpaging) | Gets a list of your active mailing lists in your account. Because the results for this call could be quite big, paging information is required as input.
[**GettingMailingListDetails**](docs/MailingListsApi.md#gettingmailinglistdetails) | Gets details for a given mailing list. You may include subscriber statistics in your results or not. Any segments existing for the requested mailing list will not be included in the results.
[**RemovingACustomField**](docs/MailingListsApi.md#removingacustomfield) | Removes a custom field definition from the specified mailing list.
[**UpdatingACustomField**](docs/MailingListsApi.md#updatingacustomfield) | Updates the properties of an existing custom field in the specified mailing list.
[**UpdatingAMailingList**](docs/MailingListsApi.md#updatingamailinglist) | Updates the properties of an existing mailing list.

## *SegmentsApi*
Class | Method 
------------ | ------------- 
[**GettingSegments**](docs/SegmentsApi.md#gettingsegments) | Get a list of all segments with their criteria for the given mailing list.
[**GettingSegmentDetails**](docs/SegmentsApi.md#gettingsegmentdetails) | Gets detailed information on a specific segment and its criteria. However, it does not include the subscribers returned by the segment.
[**GettingSegmentSubscribers**](docs/SegmentsApi.md#gettingsegmentsubscribers) | Gets a list of the subscribers that the specified segment returns according to its criteria. Because the results for this call could be quite big, paging information is required as input.
[**CreatingANewSegment**](docs/SegmentsApi.md#creatinganewsegment) | Creates a new empty segment (without criteria) for the given mailing list. You may specify the name of the segment and the way the criteria will match together.
[**UpdatingASegment**](docs/SegmentsApi.md#updatingasegment) | Updates the properties of an existing segment. You may update the name and match type of the segment.
[**AddingCriteriaToSegments**](docs/SegmentsApi.md#addingcriteriatosegments) | Adds a new criterion (a rule) to the specified segment.
[**UpdatingSegmentCriteria**](docs/SegmentsApi.md#updatingsegmentcriteria) | Updates an existing criterion in the specified segment.
[**DeletingASegment**](docs/SegmentsApi.md#deletingasegment) | Deletes a segment along with its criteria from the mailing list. The subscribers of the mailing list that the segment returned are not deleted or affected in any way.

## *SubscribersApi*
Class | Method 
------------ | ------------- 
[**GettingSubscribers**](docs/SubscribersApi.md#gettingsubscribers) | Gets a list of all subscribers in a given mailing list. You may filter the list by setting a date to fetch those subscribed since then and/or by their status. 
[**GetSubscriberByEmailAddress**](docs/SubscribersApi.md#getsubscriberbyemailaddress) | Searches for a subscriber with the specified email address in the specified mailing list.
[**GetSubscriberById**](docs/SubscribersApi.md#getsubscriberbyid) | Searches for a subscriber with the specified unique id in the specified mailing list
[**AddingSubscribers**](docs/SubscribersApi.md#addingsubscribers) | Adds a new subscriber to the specified mailing list. If there is already a subscriber with the specified email address in the list, an update will be performed instead.
[**AddingMultipleSubscribers**](docs/SubscribersApi.md#addingmultiplesubscribers) | This method allows you to add multiple subscribers in a mailing list with a single call. If some subscribers already exist with the given email addresses, they will be updated. 
[**UpdatingASubscriber**](docs/SubscribersApi.md#updatingasubscriber) | Updates a subscriber in the specified mailing list. You can even update the subscribers email, if he has not unsubscribed.
[**UnsubscribingSubscribersFromAccount**](docs/SubscribersApi.md#unsubscribingsubscribersfromaccount) | Unsubscribes a subscriber from the account.
[**UnsubscribingSubscribersFromMailingList**](docs/SubscribersApi.md#unsubscribingsubscribersfrommailinglist) | Unsubscribes a subscriber from the specified mailing list. The subscriber is not deleted, but moved to the suppression list.
[**UnsubscribingSubscribersFromMailingListAndASpecifiedCampaign**](docs/SubscribersApi.md#unsubscribingsubscribersfrommailinglistandaspecifiedcampaign) | Unsubscribes a subscriber from the specified mailing list and the specified campaign. The subscriber is not deleted, but moved to the suppression list. 
[**RemovingASubscriber**](docs/SubscribersApi.md#removingasubscriber) | Removes a subscriber from the specified mailing list permanently (without moving to the suppression list).
[**RemovingMultipleSubscribers**](docs/SubscribersApi.md#removingmultiplesubscribers) | Removes a list of subscribers from the specified mailing list permanently (without putting them in the suppression list). Any invalid email addresses specified will be ignored.


## Documentation for Models

 - [SwaggerClient::A](docs/A.md)
 - [SwaggerClient::ABCampaignData](docs/ABCampaignData.md)
 - [SwaggerClient::AbTestCampaignSummaryResponse](docs/AbTestCampaignSummaryResponse.md)
 - [SwaggerClient::ActivityByLocationResponse](docs/ActivityByLocationResponse.md)
 - [SwaggerClient::AddingCriteriaToSegmentsRequest](docs/AddingCriteriaToSegmentsRequest.md)
 - [SwaggerClient::AddingCriteriaToSegmentsResponse](docs/AddingCriteriaToSegmentsResponse.md)
 - [SwaggerClient::AddingMultipleSubscribersRequest](docs/AddingMultipleSubscribersRequest.md)
 - [SwaggerClient::AddingMultipleSubscribersResponse](docs/AddingMultipleSubscribersResponse.md)
 - [SwaggerClient::AddingSubscribersRequest](docs/AddingSubscribersRequest.md)
 - [SwaggerClient::AddingSubscribersResponse](docs/AddingSubscribersResponse.md)
 - [SwaggerClient::Analytic](docs/Analytic.md)
 - [SwaggerClient::B](docs/B.md)
 - [SwaggerClient::Campaign](docs/Campaign.md)
 - [SwaggerClient::CampaignSummaryResponse](docs/CampaignSummaryResponse.md)
 - [SwaggerClient::CloningAnExistingCampaignResponse](docs/CloningAnExistingCampaignResponse.md)
 - [SwaggerClient::Context](docs/Context.md)
 - [SwaggerClient::Context110](docs/Context110.md)
 - [SwaggerClient::Context118](docs/Context118.md)
 - [SwaggerClient::Context132](docs/Context132.md)
 - [SwaggerClient::Context140](docs/Context140.md)
 - [SwaggerClient::Context145](docs/Context145.md)
 - [SwaggerClient::Context148](docs/Context148.md)
 - [SwaggerClient::Context17](docs/Context17.md)
 - [SwaggerClient::Context32](docs/Context32.md)
 - [SwaggerClient::Context37](docs/Context37.md)
 - [SwaggerClient::Context52](docs/Context52.md)
 - [SwaggerClient::Context64](docs/Context64.md)
 - [SwaggerClient::Context66](docs/Context66.md)
 - [SwaggerClient::Context72](docs/Context72.md)
 - [SwaggerClient::Context84](docs/Context84.md)
 - [SwaggerClient::Context89](docs/Context89.md)
 - [SwaggerClient::Context93](docs/Context93.md)
 - [SwaggerClient::CreatingACustomFieldRequest](docs/CreatingACustomFieldRequest.md)
 - [SwaggerClient::CreatingACustomFieldResponse](docs/CreatingACustomFieldResponse.md)
 - [SwaggerClient::CreatingADraftCampaignRequest](docs/CreatingADraftCampaignRequest.md)
 - [SwaggerClient::CreatingADraftCampaignResponse](docs/CreatingADraftCampaignResponse.md)
 - [SwaggerClient::CreatingAMailingListRequest](docs/CreatingAMailingListRequest.md)
 - [SwaggerClient::CreatingAMailingListResponse](docs/CreatingAMailingListResponse.md)
 - [SwaggerClient::CreatingANewSegmentRequest](docs/CreatingANewSegmentRequest.md)
 - [SwaggerClient::CreatingANewSegmentResponse](docs/CreatingANewSegmentResponse.md)
 - [SwaggerClient::Criterion](docs/Criterion.md)
 - [SwaggerClient::CustomField](docs/CustomField.md)
 - [SwaggerClient::CustomField53](docs/CustomField53.md)
 - [SwaggerClient::CustomFieldsDefinition](docs/CustomFieldsDefinition.md)
 - [SwaggerClient::DeletingACampaignResponse](docs/DeletingACampaignResponse.md)
 - [SwaggerClient::DeletingAMailingListResponse](docs/DeletingAMailingListResponse.md)
 - [SwaggerClient::DeletingASegmentResponse](docs/DeletingASegmentResponse.md)
 - [SwaggerClient::Format](docs/Format.md)
 - [SwaggerClient::GetAllCampaignsResponse](docs/GetAllCampaignsResponse.md)
 - [SwaggerClient::GetCampaignStatisticsResponse](docs/GetCampaignStatisticsResponse.md)
 - [SwaggerClient::GetCampaignStatisticsWithPagingFilteredResponse](docs/GetCampaignStatisticsWithPagingFilteredResponse.md)
 - [SwaggerClient::GetCampaignsByPageAndPagesizeResponse](docs/GetCampaignsByPageAndPagesizeResponse.md)
 - [SwaggerClient::GetCampaignsByPageResponse](docs/GetCampaignsByPageResponse.md)
 - [SwaggerClient::GetSubscriberByEmailAddressResponse](docs/GetSubscriberByEmailAddressResponse.md)
 - [SwaggerClient::GetSubscriberByIdResponse](docs/GetSubscriberByIdResponse.md)
 - [SwaggerClient::GettingAllActiveMailingListsResponse](docs/GettingAllActiveMailingListsResponse.md)
 - [SwaggerClient::GettingAllActiveMailingListsWithPagingResponse](docs/GettingAllActiveMailingListsWithPagingResponse.md)
 - [SwaggerClient::GettingAllYourSendersResponse](docs/GettingAllYourSendersResponse.md)
 - [SwaggerClient::GettingCampaignDetailsResponse](docs/GettingCampaignDetailsResponse.md)
 - [SwaggerClient::GettingMailingListDetailsResponse](docs/GettingMailingListDetailsResponse.md)
 - [SwaggerClient::GettingSegmentDetailsResponse](docs/GettingSegmentDetailsResponse.md)
 - [SwaggerClient::GettingSegmentSubscribersResponse](docs/GettingSegmentSubscribersResponse.md)
 - [SwaggerClient::GettingSegmentsResponse](docs/GettingSegmentsResponse.md)
 - [SwaggerClient::GettingSenderDetailsResponse](docs/GettingSenderDetailsResponse.md)
 - [SwaggerClient::GettingSubscribersResponse](docs/GettingSubscribersResponse.md)
 - [SwaggerClient::ImportOperation](docs/ImportOperation.md)
 - [SwaggerClient::ImportOperation19](docs/ImportOperation19.md)
 - [SwaggerClient::LinkActivityResponse](docs/LinkActivityResponse.md)
 - [SwaggerClient::MailingList](docs/MailingList.md)
 - [SwaggerClient::MailingList68](docs/MailingList68.md)
 - [SwaggerClient::MailingList69](docs/MailingList69.md)
 - [SwaggerClient::MailingList85](docs/MailingList85.md)
 - [SwaggerClient::MailingLists](docs/MailingLists.md)
 - [SwaggerClient::MailingLists119](docs/MailingLists119.md)
 - [SwaggerClient::MailingLists134](docs/MailingLists134.md)
 - [SwaggerClient::Paging](docs/Paging.md)
 - [SwaggerClient::Paging76](docs/Paging76.md)
 - [SwaggerClient::RemovingACustomFieldResponse](docs/RemovingACustomFieldResponse.md)
 - [SwaggerClient::RemovingASubscriberRequest](docs/RemovingASubscriberRequest.md)
 - [SwaggerClient::RemovingASubscriberResponse](docs/RemovingASubscriberResponse.md)
 - [SwaggerClient::RemovingMultipleSubscribersRequest](docs/RemovingMultipleSubscribersRequest.md)
 - [SwaggerClient::RemovingMultipleSubscribersResponse](docs/RemovingMultipleSubscribersResponse.md)
 - [SwaggerClient::ReplyToEmail](docs/ReplyToEmail.md)
 - [SwaggerClient::SchedulingACampaignRequest](docs/SchedulingACampaignRequest.md)
 - [SwaggerClient::SchedulingACampaignResponse](docs/SchedulingACampaignResponse.md)
 - [SwaggerClient::Segment](docs/Segment.md)
 - [SwaggerClient::Sender](docs/Sender.md)
 - [SwaggerClient::SendingACampaignResponse](docs/SendingACampaignResponse.md)
 - [SwaggerClient::ShortBy](docs/ShortBy.md)
 - [SwaggerClient::SortMethod](docs/SortMethod.md)
 - [SwaggerClient::Status](docs/Status.md)
 - [SwaggerClient::Subscriber](docs/Subscriber.md)
 - [SwaggerClient::Subscribers](docs/Subscribers.md)
 - [SwaggerClient::Subscribers150](docs/Subscribers150.md)
 - [SwaggerClient::TestingACampaignRequest](docs/TestingACampaignRequest.md)
 - [SwaggerClient::TestingACampaignResponse](docs/TestingACampaignResponse.md)
 - [SwaggerClient::Type](docs/Type.md)
 - [SwaggerClient::UnschedulingACampaignResponse](docs/UnschedulingACampaignResponse.md)
 - [SwaggerClient::UnsubscribingSubscribersFromAccountRequest](docs/UnsubscribingSubscribersFromAccountRequest.md)
 - [SwaggerClient::UnsubscribingSubscribersFromAccountResponse](docs/UnsubscribingSubscribersFromAccountResponse.md)
 - [SwaggerClient::UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignRequest](docs/UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignRequest.md)
 - [SwaggerClient::UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignResponse](docs/UnsubscribingSubscribersFromMailingListAndASpecifiedCampaignResponse.md)
 - [SwaggerClient::UnsubscribingSubscribersFromMailingListRequest](docs/UnsubscribingSubscribersFromMailingListRequest.md)
 - [SwaggerClient::UnsubscribingSubscribersFromMailingListResponse](docs/UnsubscribingSubscribersFromMailingListResponse.md)
 - [SwaggerClient::UpdatingACustomFieldRequest](docs/UpdatingACustomFieldRequest.md)
 - [SwaggerClient::UpdatingACustomFieldResponse](docs/UpdatingACustomFieldResponse.md)
 - [SwaggerClient::UpdatingADraftCampaignRequest](docs/UpdatingADraftCampaignRequest.md)
 - [SwaggerClient::UpdatingADraftCampaignResponse](docs/UpdatingADraftCampaignResponse.md)
 - [SwaggerClient::UpdatingAMailingListRequest](docs/UpdatingAMailingListRequest.md)
 - [SwaggerClient::UpdatingAMailingListResponse](docs/UpdatingAMailingListResponse.md)
 - [SwaggerClient::UpdatingASegmentRequest](docs/UpdatingASegmentRequest.md)
 - [SwaggerClient::UpdatingASegmentResponse](docs/UpdatingASegmentResponse.md)
 - [SwaggerClient::UpdatingASubscriberRequest](docs/UpdatingASubscriberRequest.md)
 - [SwaggerClient::UpdatingASubscriberResponse](docs/UpdatingASubscriberResponse.md)
 - [SwaggerClient::UpdatingSegmentCriteriaRequest](docs/UpdatingSegmentCriteriaRequest.md)
 - [SwaggerClient::UpdatingSegmentCriteriaResponse](docs/UpdatingSegmentCriteriaResponse.md)
 - [SwaggerClient::WithStatistics](docs/WithStatistics.md)

