# == Schema Information
#
# Table name: categories
#
#  id                 :bigint           not null, primary key
#  code(product code) :string
#  name(product name) :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Category < ApplicationRecord
  belong_to :product

  validates :name, presence: true
  auto_strip_attributes :name, :code
end
