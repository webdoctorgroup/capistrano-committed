require 'capistrano/committed/version'
require 'capistrano/committed/i18n'
require 'capistrano/committed/github_api'

module Capistrano
  module Committed
    class << self
      def get_issue_urls(issue_pattern, url_pattern, message)
        fail TypeError, t('committed.error.helpers.valid_param',
                          method: __callee__,
                          param: 'issue_param') unless
                            issue_pattern.is_a?(String) ||
                            issue_pattern.is_a?(Regexp)

        fail TypeError, t('committed.error.helpers.valid_param',
                          method: __callee__,
                          param: 'url_pattern') unless
                            url_pattern.is_a?(String)

        fail TypeError, t('committed.error.helpers.valid_param',
                          method: __callee__,
                          param: 'message') unless
                            message.is_a?(String)

        matches = message.scan(Regexp.new(issue_pattern))
        return unless matches
        matches.map { |m| format(url_pattern, m[0]) }
      end
    end
  end
end

load File.expand_path('../tasks/committed.rake', __FILE__)
