class Party < ApplicationRecord
  validates_presence_of :title,
                        :date,
                        :zip_code

end
