# swagger_petstore
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module SwaggerPetstore
  #  swagger_petstore client class.
  class Client
    include CoreLibrary
    attr_reader :config, :auth_managers

    # Returns the configured authentication petstore_auth instance.
    def petstore_auth
      @auth_managers['petstore_auth']
    end

    # Access to pet controller.
    # @return [PetController] Returns the controller instance.
    def pet
      @pet ||= PetController.new @global_configuration
    end

    # Access to store controller.
    # @return [StoreController] Returns the controller instance.
    def store
      @store ||= StoreController.new @global_configuration
    end

    # Access to user controller.
    # @return [UserController] Returns the controller instance.
    def user
      @user ||= UserController.new @global_configuration
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 60,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil,
      environment: Environment::PRODUCTION, api_key_credentials: nil,
      http_basic_credentials: nil, petstore_auth_credentials: nil,
      test_header: 'TestHeaderDefaultValue', config: nil
    )
      @config = if config.nil?
                  Configuration.new(
                    connection: connection, adapter: adapter, timeout: timeout,
                    max_retries: max_retries, retry_interval: retry_interval,
                    backoff_factor: backoff_factor,
                    retry_statuses: retry_statuses,
                    retry_methods: retry_methods, http_callback: http_callback,
                    environment: environment,
                    api_key_credentials: api_key_credentials,
                    http_basic_credentials: http_basic_credentials,
                    petstore_auth_credentials: petstore_auth_credentials,
                    test_header: test_header
                  )
                else
                  config
                end

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent)
                                                 .global_header('TestHeader', @config.test_header)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      %w[api_key httpBasic petstore_auth].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['api_key'] = ApiKey.new(http_client_config.api_key_credentials)
      @auth_managers['httpBasic'] = HttpBasic.new(http_client_config.http_basic_credentials)
      @auth_managers['petstore_auth'] = PetstoreAuth.new(
        http_client_config.petstore_auth_credentials, global_config
      )
    end
  end
end
