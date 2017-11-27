class InternetMobileUser < ApplicationRecord

  def self.to_csv
    attributes = %w{year mobile_users internet_users}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |internet_mobile_user|
        csv << attributes.map{ |attr| internet_mobile_user.send(attr) }
      end
    end
  end
end
