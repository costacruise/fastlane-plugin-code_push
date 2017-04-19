module Fastlane
  module Helper
    class CodePushLoginHelper
      def self.log_in(access_key)
        Action.sh("code-push login --accessKey #{access_key}")
      end

      def self.log_out
        Action.sh("code-push logout")
      rescue
      end

      def self.is_logged_in
        value = true
        begin
          Action.sh("code-push whoami", false)
        rescue
          value = false
        end
        value
      end
    end
  end
end
