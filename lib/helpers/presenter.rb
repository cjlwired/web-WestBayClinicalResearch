module Sinatra
  module PresenterHelper
    def thank_you_action(action)
      respond = '<br><span class="tab">' + 
                'We will respond to you shortly.' +
                '</span>'

      '<b>Thank you for ' + 
      (
        case action
        when 'contact','sponsor' then 'contacting us!</b>' + respond
        when 'newsletter'        then 'subscribing to our newsletter!</b>'
        when 'volunteer'         then 'volunteering for a trial!</b>' + respond
        end
      )
    end

    def thank_you_url(action)
      'http://#{ domain }/thankyou?action=#{ action }'
    end
  end

  helpers PresenterHelper
end