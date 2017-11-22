class StatisticsController < ApplicationController

  def index

  end

  def import_internet_mobile_users
    file = Roo::Spreadsheet.open(params[:file])
    i = 2
    until i > file.last_row
      # create record in DB
      InternetMobileUser.create(year: file.row(i)[0], mobile_users: file.row(i)[1], internet_users: file.row(i)[2])
      i += 1
    end
    redirect_to root_url, notice: "Countries Added."
  end
end
