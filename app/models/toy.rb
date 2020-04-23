class Toy < ApplicationRecord
    # If I ever needed to break naming convention but still have the model hooked up to the database tables
    # self.table_name = "toys"
    belongs_to :user
    has_one :manufacturer, dependent: :destroy
    has_many :toys_categories
    has_many :categories, through: :toys_categories
end