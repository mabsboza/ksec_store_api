# == Schema Information
#
# Table name: products
#
#  id                   :bigint           not null, primary key
#  brand(product brand) :string
#  code(product code)   :string
#  name(product name)   :string           not null
#  price                :decimal(10, 2)   not null
#  quantity             :decimal(10, 2)   not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Product < ApplicationRecord
  has_one :category

  validates :name, presence: true
  auto_strip_attributes :name, :code, :brand
end
