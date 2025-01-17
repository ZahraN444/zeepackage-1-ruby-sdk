# swagger_petstore
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SwaggerPetstore
  # StoreController
  class StoreController < BaseController
    # For valid response try integer IDs with value >= 1 and <= 10. Other values
    # will generated exceptions
    # @param [Integer] order_id Required parameter: ID of pet that needs to be
    # fetched
    # @return [Order] response from the API call
    def get_order_by_id(order_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/store/order/{orderId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(order_id, key: 'orderId')
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Order.method(:from_hash))
                   .local_error('400',
                                'Invalid ID supplied',
                                APIException)
                   .local_error('404',
                                'Order not found',
                                APIException))
        .execute
    end

    # Place an order for a pet
    # @param [StoreOrderRequest] body Required parameter: order placed for
    # purchasing the pet
    # @return [Order] response from the API call
    def place_order(body)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/store/order',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:custom_type_deserializer))
                   .deserialize_into(Order.method(:from_hash))
                   .local_error('400',
                                'Invalid Order',
                                APIException))
        .execute
    end

    # Returns a map of status codes to quantities
    # @return [Hash[String, Integer]] response from the API call
    def get_inventory
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/store/inventory',
                                     Server::DEFAULT)
                   .auth(Single.new('api_key')))
        .response(new_response_handler
                   .deserializer(APIHelper.method(:deserialize_primitive_types))
                   .deserialize_into(proc do |response| response.to_i end)
                   .is_primitive_response(true))
        .execute
    end

    # For valid response try integer IDs with positive integer value. Negative
    # or non-integer values will generate API errors
    # @param [Integer] order_id Required parameter: ID of the order that needs
    # to be deleted
    # @return [void] response from the API call
    def delete_order(order_id)
      new_api_call_builder
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/store/order/{orderId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(order_id, key: 'orderId')
                                    .should_encode(true)))
        .response(new_response_handler
                   .is_response_void(true)
                   .local_error('400',
                                'Invalid ID supplied',
                                APIException)
                   .local_error('404',
                                'Order not found',
                                APIException))
        .execute
    end
  end
end
