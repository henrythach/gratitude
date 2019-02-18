class Entry < ApplicationRecord
  validates :title, presence: true
  belongs_to :user

  def timeline_period(format = '%a, %b %d')
    created_at.strftime(format)
  end

  def self.to_csv
    ::CSV.generate(headers: true) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end

  def self.csv_filename
    "gratitude-#{Date.today}.csv"
  end
end
