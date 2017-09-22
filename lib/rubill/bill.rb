module Rubill
  class Bill < Base
    def self.send_payment(opts)
      SentPayment.create(opts)
    end

    def amount
      remote_record[:amount]
    end

    def self.remote_class_name
      "Bill"
    end
  end
end
