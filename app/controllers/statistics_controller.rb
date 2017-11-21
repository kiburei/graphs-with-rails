class StatisticsController < ApplicationController

  def index

  end

  def import
    file = Roo::Spreadsheet.open(params[:file])
    i = 2
    until i > file.last_row
      # create record in DB
      Country.create(name: file.row(i)[0])
      i += 1
    end
    redirect_to root_url, notice: "Countries Added."
  end
end
