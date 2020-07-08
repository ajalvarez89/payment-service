# == Schema Information
#
# Table name: charges
#
#  id             :bigint           not null, primary key
#  amount         :decimal(, )      default(0.0)
#  error_message  :text
#  payment_method :integer          default(0)
#  response_data  :jsonb
#  status         :integer          default(0)
#  uid            :string(50)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'test_helper'

class ChargeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
