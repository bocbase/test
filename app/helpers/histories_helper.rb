module HistoriesHelper

    #カテゴリを数値からテキストに置換
    def categoryText(num)
        category = ["NEWS", "SINGLE", "ALBUM", "BD/DVD", "LIVE", "TV", "RADIO", "MAGAZINE", "BIRTHDAY"]
        category2 = category[num]
        return category2
    end

    def categoryColor(num)
        categoryColor = ["news0", "news1", "news2", "news3", "news4", "news5", "news6", "news7", "news8"]
        categoryColor2 = categoryColor[num]
        return categoryColor2
    end
end