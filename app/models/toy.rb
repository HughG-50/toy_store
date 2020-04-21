class Toy < ApplicationRecord
    # If I ever needed to break naming convention but still have the model hooked up to the database tables
    # self.table_name = "toys"
    belongs_to :user
end