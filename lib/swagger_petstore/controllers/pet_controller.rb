# swagger_petstore
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SwaggerPetstore
  # PetController
  class PetController < BaseController
    # Multiple tags can be provided with comma separated strings. Use tag1,
    # tag2, tag3 for testing.
    # @param [Array[String]] tags Required parameter: Tags to filter by
    # @return [Array[Pet]] response from the API call
    def find_pets_by_tags(tags)
      warn 'Endpoint find_pets_by_tags in PetController is deprecated'
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/pet/findByTags',
                                     Server::DEFAULT)
                   .query_param(new_parameter(tags, key: 'tags'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('petstore_auth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Pet.method(:from_hash))
                   .is_response_array(true)
                   .local_error('400',
                                'Invalid tag value',
                                APIException))
        .execute
    end

    # Update an existing pet
    # @param [PetRequest] body Required parameter: Pet object that needs to be
    # added to the store
    # @return [void] response from the API call
    def update_pet(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::PUT,
                                     '/pet',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('petstore_auth')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('400',
                                'Invalid ID supplied',
                                APIException)
                   .local_error('404',
                                'Pet not found',
                                APIException)
                   .local_error('405',
                                'Validation exception',
                                APIException))
        .execute
    end

    # Add a new pet to the store
    # @param [PetRequest] body Required parameter: Pet object that needs to be
    # added to the store
    # @return [void] response from the API call
    def add_pet(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/pet',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('petstore_auth')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('405',
                                'Invalid input',
                                APIException))
        .execute
    end

    # Returns a single pet
    # @param [Integer] pet_id Required parameter: ID of pet to return
    # @return [Pet] response from the API call
    def get_pet_by_id(pet_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/pet/{petId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(pet_id, key: 'petId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('api_key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Pet.method(:from_hash))
                   .local_error('400',
                                'Invalid ID supplied',
                                APIException)
                   .local_error('404',
                                'Pet not found',
                                APIException))
        .execute
    end

    # Multiple status values can be provided with comma separated strings
    # @param [Array[Status2Enum]] status Required parameter: Status values that
    # need to be considered for filter
    # @return [Array[Pet]] response from the API call
    def find_pets_by_status(status)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/pet/findByStatus',
                                     Server::DEFAULT)
                   .query_param(new_parameter(status, key: 'status'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('petstore_auth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Pet.method(:from_hash))
                   .is_response_array(true)
                   .local_error('400',
                                'Invalid status value',
                                APIException))
        .execute
    end

    # Updates a pet in the store with form data
    # @param [Integer] pet_id Required parameter: ID of pet that needs to be
    # updated
    # @param [ContentTypeEnum] content_type Required parameter: Example:
    # @param [String] name Optional parameter: Updated name of the pet
    # @param [String] status Optional parameter: Updated status of the pet
    # @return [void] response from the API call
    def update_pet_with_form(pet_id,
                             content_type,
                             name: nil,
                             status: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/pet/{petId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(pet_id, key: 'petId')
                                    .should_encode(true))
                   .form_param(new_parameter(name, key: 'name'))
                   .form_param(new_parameter(status, key: 'status'))
                   .header_param(new_parameter('application/x-www-form-urlencoded', key: 'content-type'))
                   .auth(Single.new('petstore_auth')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('405',
                                'Invalid input',
                                APIException))
        .execute
    end

    # Deletes a pet
    # @param [Integer] pet_id Required parameter: Pet id to delete
    # @param [String] api_key Optional parameter: Example:
    # @return [void] response from the API call
    def delete_pet(pet_id,
                   api_key: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/pet/{petId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(pet_id, key: 'petId')
                                    .should_encode(true))
                   .header_param(new_parameter(api_key, key: 'api_key'))
                   .auth(Single.new('petstore_auth')))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('400',
                                'Invalid ID supplied',
                                APIException)
                   .local_error('404',
                                'Pet not found',
                                APIException))
        .execute
    end

    # uploads an image
    # @param [Integer] pet_id Required parameter: ID of pet to update
    # @param [String] additional_metadata Optional parameter: Additional data to
    # pass to server
    # @param [File | UploadIO] file Optional parameter: file to upload
    # @return [ApiResponse] response from the API call
    def upload_file(pet_id,
                    additional_metadata: nil,
                    file: nil)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/pet/{petId}/uploadImage',
                                     Server::DEFAULT)
                   .template_param(new_parameter(pet_id, key: 'petId')
                                    .should_encode(true))
                   .form_param(new_parameter(additional_metadata, key: 'additionalMetadata'))
                   .multipart_param(new_parameter(file, key: 'file')
                                     .default_content_type('application/octet-stream'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('petstore_auth')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(ApiResponse.method(:from_hash)))
        .execute
    end
  end
end
