class DetalleSms < ActiveRecord::Base
	belongs_to	:sms
	belongs_to	:persona
end
