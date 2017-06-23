module ApplicationHelper
    #日付をYYYY-MM-DDからYYYY.MM.DDに変換
    def changeFormatDate(ymd)
        if ymd.kind_of?(String)
          ymd = Date.parse(ymd)
        end
          result = ymd.strftime('%Y.%m.%d')
    end

    #日本語の曜日を取得
    def getJapaneseDayOfTheWeek(ymd)
        if ymd.kind_of?(String)
          ymd = Date.parse(ymd)
        end
        youbi = %w[日 月 火 水 木 金 土]
        result = '(' + youbi[ymd.wday] + ')'
    end

    #指定年のライブ名リストを取得
    def getOneYearLiveTitleList
        con = ActiveRecord::Base.connection
        result = con.select_rows('select id, ymd, title from lives where ymd between "2016-01-01" and "2016-12-31" order by id')
    end

    

end
