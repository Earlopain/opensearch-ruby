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
    module Root
      module Actions
        # Changes the number of requests per second for a particular reindex operation.
        #
        # @option args [String] :task_id *Required* Identifier for the task.
        # @option args [Float] :requests_per_second The throttle for this request in sub-requests per second.
        def reindex_rethrottle(args = {})
          args = Utils.clone_and_normalize_arguments(args)
          raise ArgumentError, "Required argument 'task_id' missing" if args['task_id'].nil?

          _task_id = args.delete('task_id')

          headers = args.delete('headers') || {}
          body    = args.delete('body')
          method  = 'POST'
          url     = Utils.build_url('_reindex', _task_id, '_rethrottle')

          Utils.validate_query_params! args, REINDEX_RETHROTTLE_QUERY_PARAMS
          transport.perform_request(method, url, args, body, headers).body
        end

        REINDEX_RETHROTTLE_QUERY_PARAMS = Set.new(%w[
          requests_per_second
        ]).freeze
      end
    end
  end
end
