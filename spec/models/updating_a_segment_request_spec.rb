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

# Unit tests for SwaggerClient::UpdatingASegmentRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UpdatingASegmentRequest' do
  before do
    # run before each test
    @instance = SwaggerClient::UpdatingASegmentRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UpdatingASegmentRequest' do
    it 'should create an instance of UpdatingASegmentRequest' do
      expect(@instance).to be_instance_of(SwaggerClient::UpdatingASegmentRequest)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "match_type"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
