module.exports = (robot) ->
    robot.respond /(.+)から選んで/, (msg) ->
        items = msg.match[1].split(/[　・、\s]+/)
        item = msg.random items
        sen = ["#{item}でいきましょう。凪のシックスセンスがそういっている",
            "#{item}という選択が最近の流行りらしい",
            "#{item}が良いとはーちゃんは言っています。凪も同じく"]
        sens = sen[Math.floor(Math.random() * sen.length)]
        msg.reply sens