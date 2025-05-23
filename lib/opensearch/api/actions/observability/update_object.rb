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
    module Observability
      module Actions
        # Updates an existing observability object.
        #
        # @option args [String] :object_id *Required* The ID of the observability object to update.
        # @option args [Hash] :body The core observability object containing visualization and query data.
        def update_object(args = {})
          args = Utils.clone_and_normalize_arguments(args)
          raise ArgumentError, "Required argument 'object_id' missing" if args['object_id'].nil?

          _object_id = args.delete('object_id')

          headers = args.delete('headers') || {}
          body    = args.delete('body')
          method  = 'PUT'
          url     = Utils.build_url('_plugins/_observability/object', _object_id)

          Utils.validate_query_params! args
          transport.perform_request(method, url, args, body, headers).body
        end
      end
    end
  end
end
