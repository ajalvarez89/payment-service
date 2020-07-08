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
class Charge < ApplicationRecord
  enum status: %i[created pending paid rejected error]
  enum payment_method: %i[unknown credit_card debit_card pse cash referenced]

  before_create :generate_uid

  private

  def generate_uid
    begin
      self.uid = SecureRandom.hex(5)
    end while self.class.exists?(uid: self.uid)
  end
end
