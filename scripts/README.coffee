module.exports = (robot) ->
  robot.enter (res) ->
    res.reply "はじめまして、凪です。久川凪です。凪です。ネギではありません。鍵でもなければ木々でもなく、釘でもない。このチャンネルの主です。どうぞよしなに。こう見えて７６５プロのアイドルです。双子の妹のはーちゃんもアイドルです。とっても可愛い。"
    res.reply "朝、昼、夕方の３回時報をお知らせ。おはようからおやすみまで、鳩時計ならぬ凪時計です。ポッポー"
    res.reply "他にもできることはたくさんありますが、詳しくは「凪ヘルプ」とチャンネルにメッセージしてください。それでは良き凪ライフを。"
    res.reply "凪の開発に興味あり？それなら合法的にJSを開発できる環境があるそうです...凪はJCです、あしからず。"

  robot.hear /凪ヘルプ/i, (res) ->
    res.reply "わーお。まごにも衣装、凪にもショウタイム。どうも凪です。アイドルモードです。ところでアイドルを名乗るからにはお仕事をしなければ。お困りのあなたに颯爽登場、凪ヘルプです。"
    res.reply "時計が読めないあなたに、「何時？」と聞けば凪があなたに時間を教えてあげましょう。正確な腹時計を刮目して見よ。"
    res.reply "優柔不断なあなたに、「@久川凪 焼肉、寿司、竹輪から選んで」などメンションを付けて聞けば、凪が勝手にあなたの晩ご飯を決めます。あみだくじならぬ凪みくじ、凪チョイスにお任せあれ。外れくじを決めるという罰ゲーム的側面もまた。"
    res.reply "わからない言葉に「○○とは」とメンションつきで聞けば、凪ペディアが答えます。メンションが分からない？＠をつけたメッセージ"
    res.reply "今のところ凪にできることはこれくらい。今後の凪先生の成長にご期待ください。最終回かも"