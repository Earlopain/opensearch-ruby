# SPDX-License-Identifier: Apache-2.0
#
# The OpenSearch Contributors require contributions made to
# this file be licensed under the Apache-2.0 license or a
# compatible open source license.

# This file is generated from the OpenSearch REST API spec.
# Do not modify it by hand. Instead, modify the generator or the spec.

# frozen_string_literal: true

module OpenSearch
  module API
    module Sql
      module Actions
        # Updates SQL plugin settings in the OpenSearch cluster configuration.
        #
        # @option args [String] :format Specifies the response format (JSON or YAML).
        # @option args [Hash] :body Contains SQL plugin configuration settings.
        def settings(args = {})
          args = Utils.clone_and_normalize_arguments(args)
          headers = args.delete('headers') || {}
          body    = args.delete('body')
          method  = 'PUT'
          url     = '_plugins/_query/settings'

          Utils.validate_query_params! args, SETTINGS_QUERY_PARAMS
          transport.perform_request(method, url, args, body, headers).body
        end

        SETTINGS_QUERY_PARAMS = Set.new(%w[
          format
        ]).freeze
      end
    end
  end
end
