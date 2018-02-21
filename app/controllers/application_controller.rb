class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
      def check_admin
        if user_signed_in?
          if current_user.admin?
            # No problem. Go ahead.
          else
            flash[:alert] = 'Only admins can access this page.'
            redirect_to root_url
          end
        else
          flash[:alert] = 'You need to sign in to access this page.'
          redirect_to root_url
        end
      end

      def check_enabled
        if user_signed_in?
          if current_user.enabled?
            # No problem. Go ahead.
          else
            flash[:alert] = 'Your account has been disabled. Please contact portal admin.'
            redirect_to root_url
          end
        else
          flash[:alert] = 'You need to sign in to access this page.'
          redirect_to root_url
        end
      end
end
