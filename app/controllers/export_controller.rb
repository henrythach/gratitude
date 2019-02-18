class ExportController < ApplicationController
  before_action :authenticate_user!

  def entries
    @entries = current_user.entries.order(created_at: :desc)

    respond_to do |format|
      format.csv { send_data @entries.to_csv, filename: Entry.csv_filename }
    end
  end
end
