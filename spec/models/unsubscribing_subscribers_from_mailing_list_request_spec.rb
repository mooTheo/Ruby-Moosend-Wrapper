=begin
#Moosend API

#TODO: Add a description

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::UnsubscribingSubscribersFromMailingListRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UnsubscribingSubscribersFromMailingListRequest' do
  before do
    # run before each test
    @instance = SwaggerClient::UnsubscribingSubscribersFromMailingListRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UnsubscribingSubscribersFromMailingListRequest' do
    it 'should create an instance of UnsubscribingSubscribersFromMailingListRequest' do
      expect(@instance).to be_instance_of(SwaggerClient::UnsubscribingSubscribersFromMailingListRequest)
    end
  end
  describe 'test attribute "email"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

