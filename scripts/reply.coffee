module.exports = (robot) ->
    robot.respond /(.*)とは(|？)/i, (res) ->
        word = res.match[1]
        if word is "ゆーこちゃん"
            res.reply "ゆーこちゃん？元気ですが？ゆーこちゃんは凪たちのママです⋯まさかゆーこちゃんをアイドルにスカウトする気"
        else if word is "はーちゃん"
            res.reply "はーちゃんは可愛い。凪のアイドルです。"
        else if word is "P"
            res.reply "PはPと呼ばれています。ピー。何かの動作音みたいですね。ピー。可愛い女の子を見つけたぞ。アイドルセンサー起動中。ピピピー。いまの凪にも反応していますか。ピピピー。P。"

        else
            res.reply "ぱーどぅん？凪は聞いています。聞き返しています。 #{word} は凪にはまだ早い"