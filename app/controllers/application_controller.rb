class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #コンテンツナビの年リストを取得
  helper_method :getContentsNavYearList
  def getContentsNavYearList(table)
    con = ActiveRecord::Base.connection
    result = con.select_rows('select distinct substr(ymd,1,4) from ' + table +' order by ymd desc')
  end

  #SQLの結果を配列に格納
  def putArray(sqlResult)
    list = Array.new
    num = 0

    sqlResult.each do |entity|
      list[num] = entity[0]
      num = num +1
    end
    return list
  end

  #パラメータがリストに含まれるか
  def validateParamIncludeList(param,navList)
    @@checkedParam
    
    if navList.include?(param)
      checkedParam = param
    else
      #含まれていない場合はリストの最新を代入
      checkedParam = navList[0]
    end

    return checkedParam
  end

  #年の初日と最終日を取得
  def getYearStartLast(checkedParam)
      start = checkedParam + '-01-01'
      last = checkedParam + '-12-31'
      return start , last
  end

  #指定年のライブリストを取得
    def getOneYearLiveList(year)
        con = ActiveRecord::Base.connection
        result = con.select_rows('select lives.id, lives.ymd, lives.title, setlists.ymd, setlists.place from setlists left join lives on setlists.title = lives.title where lives.ymd between "' + year + '-01-01" and "' + year + '-12-31"  order by lives.id')
    end

end

#日付をYYYY.MM.DD(曜日)に変換
def changeDateFormat(one_year_date)
  i=0
  result = []
  youbi = %w[日 月 火 水 木 金 土]
  one_year_date.each do |one_date|
    result[i] = one_date.ymd.strftime('%Y.%m.%d')
    result[i] = result[i] + ' (' + youbi[one_date.ymd.wday] + ')'
    i=i+1
  end
  return result
end