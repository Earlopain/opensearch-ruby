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
    module AsynchronousSearch
      module Actions
        # Deletes any responses from an asynchronous search.
        #
        # @option args [String] :id *Required*
        def delete(args = {})
          args = Utils.clone_and_normalize_arguments(args)
          raise ArgumentError, "Required argument 'id' missing" if args['id'].nil?

          _id = args.delete('id')

          headers = args.delete('headers') || {}
          body    = args.delete('body')
          method  = 'DELETE'
          url     = Utils.build_url('_plugins/_asynchronous_search', _id)

          Utils.validate_query_params! args
          transport.perform_delete_request method, url, args, body, headers
        end
      end
    end
  end
end
