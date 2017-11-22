module StatisticsHelper
  def internet_mobile_users
    line_chart internet_mobile_users_charts_path, height: '500px', library: {
      title: {text: 'Internet Mobile Users', x: -20},
      yAxis: {allowDecimals: false, title: {text: 'Mobile Users'}},
      xAxis: {title: {text: 'Year'}}
    }
  end

  def sporters_by_age
    bar_chart sporters_by_age_charts_path, height: '500px', library: {
      title: {text: 'Sporters by age', x: -20},
      yAxis: {allowDecimals: false, title: {text: 'Ages count'}},
      xAxis: {title: {text: 'Age'}}
    }
  end

  def sporters_by_country
    column_chart sporters_by_country_charts_path, library: {
      title: {text: 'Sporters by Country', x: -20},
      yAxis: {title: {text: 'Sporters Count'} },
      xAxis: {title: {text: 'Country'} }
    }
  end

  def results_by_country
    column_chart results_by_country_charts_path, stacked: true, height: '500px', library: {
      title: { text: 'Results by Country', x: -20 },
      yAxis: { title: {text: 'Count'} },
      xAxis: { title: {text: 'Countrie and Places'} }
    }
  end

  def competitions_by_year
    line_chart competitions_by_year_charts_path, library: {
      title: { text: 'Competitions by year', x: -20},
      yAxis: { crosshair: true, title: { text: 'Competitions count'}},
      xAxis: {crosshair: true, title: {text: 'Year'}}
  }
  end

end
