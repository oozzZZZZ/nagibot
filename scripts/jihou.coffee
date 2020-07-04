cronJob = require('cron').CronJob
roomselect = "#general"


alltimemessages = [
  "凪です。凧と名簿に書くのはいけません。飛ばして子供に大人気だぞ",
  "凪は圧倒的にｱｲﾄﾞﾙしていますね。わーお。ところで、世の中では何もしないをしてる様子をｱｲﾄﾞﾙﾀｲﾑというそうです。凪はｱｲﾄﾞﾙﾀｲﾑまっさかり。わーお...笑っていられるのも今のうちですよ",
  "みんなを見ています。ぼーっとしているように見えた？よく見ていますね",
  "最近、お店に入ります。用がないお店です。",
  "ユニーク。いい言葉です。みんなユニーク。みんな違ってみんないい",
  "いえーい。してやったりの顔です。どうやら凪も、だいぶ成長してきた様子。ここはひとつ、ご褒美を用意しましょう。ネギではない。",
  "今日はダンスレッスンです。阿波踊りならどうにか。あわわ、あわわわわ",
  "こう見えても凪はアイドルです。事務所のドル箱です。",
  "はーちゃんとは違います。名前が違います。あと…はーちゃんはかわいい",
  "はーちゃんは凪の双子の妹です。とっても可愛い。",
  "凪はリラックスしています。自然体100%。いまだけはネギと呼ばれてもかまわない。何も考えずにしゃべっています。バレましたか。",
  "ネギ・凧・凪でトリオユニットなどいかがでしょう。この企画、勝ったな",
  "ゆーこちゃんからLIVEの感想が。超長文で。もしや厄介ファンか…",
  "ゆーこちゃんは凪たちのママです。",
  "この動画のやつは、かわいいをわかっていますね。わからなくていいのに https://www.youtube.com/watch?v=cuFIWdvWqEY",
  "一度は書いてみたいもの。ﾏﾝｼｮﾝのﾁﾗｼのﾎﾟｴﾑですね。味わい深い",
  "大好きな人の隣の席にいるのに、話が噛み合いません。どうすればいいですか？  インターネットをやめろ",
  "グラップラーの久川、久川バキ。炭酸入りのコーラをひとつ。",
  "凪です。ピチピチの現代人（いまじん）",
  "凪はマンションポエムに嵌っています。公式設定です...公式とは一体...? https://docs.google.com/forms/d/e/1FAIpQLScu75qNtdXh3vIyAMPsa9v0qPT-CL8sihpJYnCDkkDNPKmCvw/viewform",
  "凪を覗く時、凪もまたこちらを覗いているのだ https://omocoro.jp/bros/kiji/184594/",
  "凪はドヤ顔をしています。精一杯、全力ドヤりタイムです",
  "凪です。ネギではありません。鍵でもなければ木々でもなく、釘でもない",
  "ネギは風邪に効きます。凪はまだ風邪に効きませんが、いずれ",
  "見せつけてやります、凪・スマイルを。0円だぞ",
  "徳島には何もありません、いや、はーちゃんがいるな。",
  "時代がまだ凪に追いついていない...凪のスピードについてこれていないな。ほう、凪の動きが見えるとは。そちら側の人間か。",
  "吾輩は凪である。名前はまだない",
  "尾木ママ、夢見りあむを批判『ピンク』、そんなYahooニュースを見たような",
  "【検証】富嶽で阿部寛のホームページを開くとどうなるの？これはバズりますね",
  "徳島ディビジョン、凪たちの故郷です。ゆーこちゃんがライムを刻みます",
  "事務所は学校に似ています。不審者が現れるところとか、そっくりですね",
  "ポエムを書きます。『少女たちの織りなす尊い日常』という感じでひとつの",
  "Pは仕事が好きですか。女の子と、どっちが。凪はどちらもちょっと",
  "質問があります。人生の答えを教えてください。140文字以内で、さあ	",
  "はーちゃんとは違います。名前が違います。あと⋯はーちゃんはかわいい",
  "凪はここにいます。Pはお空に行ってしまいましたか？いい人でしたね	",
  "ねこはにゃーん。では凪はなんと鳴くでしょうか？正解は⋯⋯⋯⋯はい",
  "制服でうろうろしています。コスプレみたいなものですね。レッツプレイ",
  "アイドルになったら、作詞をするといいと聞きました。参入障壁が低い",
  "凪でも緊張はします。ライオンの檻に放り込まれたりしたら、たぶん",
  "髪型はポリシーです。そういうことにしておけば、いじらなくてもいい。",
  "寂しがり屋で、かまってちゃん。さてははーちゃんか",
  "自信はないけど努力もしない。一般人の化身です。大衆を敵に回す気です",
  "はーちゃんと同じところはどこでしょう？ヒントは名字。答えは親の顔",
  "ちぐはぐで言うと、ちぐ担当です。はーちゃんのほうが、ぐですね",
  "今は女子寮で暮らしています。凪は女子寮を満喫しています。ゆーこちゃんは許さなかったおふとんお菓子パーリーが、いともたやすく",
  "いえいいえい。ひゅーひゅー。うぇいうぇい。ぶい…現場からは以上です",
  "また見にきたのですか。相変わらず、凪にメロメロですね。わかりみです",
  "バランス感覚を磨いていきましょう。ワークとライフのせめぎ合いです",
  "笑顔ならはーちゃんにお任せ。凪は凪らしくワンダーランドをお届けです",
  "ポエム・ポエマー・ポエミスト。凪はぽえぽえしています。ぽえーっと",
  "ザ・凪伝説は休載です。目指すは、連載再開が話題となるレベルの休載",
  "押しも押されも…押されてしまった。まだまだ半人前という教訓か…",
  "カメラは好きです。スマホだろうと思いましたか。現代っ子の発想ですね"
]

module.exports = (robot) ->
    #roomselect = robot.message.room

    #夕方の時報
    cronjob = new cronJob(
      cronTime: "0 0 18 * * 0-4"    # 実行する時間 s/m/h/day/month/week
      start:    true
      timeZone: "Asia/Tokyo"
      onTick: ->
        time_messages = [
          "18時になりました。",
          "夕方です。",
          "ぴっぴっぴっ⋯ぽーん。",
          "夕方凪ニュースの時間です。",
          "おばんです。",
          "今日も一日お疲れさまでした",
          " "
        ]
        messages = [
          "凪は限界です。こてん、と。ソファに倒れこむまで、あと3秒。2、1……わおっ",
          "凪は休みます。もう休んでいる、の間違い",
          "本日のお夕食。Pのお財布事情を考慮して、凪はファミレスを提案します",
          "オフィスをもっと凪ナイズしたいですね。果たして凪ナイズとは...というわけで終業時間です。今日も頑張った。",
          "1日が終わったあとにやる気が出るのは、おかしい。宿題終わったあとに宿題やる気になったら、天才になってしまいますね。",
          "…もう限界です。このテンションでよくはーちゃんはいきていられる…",
          "ぴーすぴーす。凪は興奮しています。わかりますか。はしゃぎなぎです。顔に出ていないのは、自覚があります。それなら、ピースをしておけばいい。それが、凪流アイドルということです...これが働き過ぎの弊害です。帰って寝ましょう",
          "もしかして、凪の衣装を褒めましたか？では帰ります。用は済みました",
          "ねこはバズると聞きました。なので、ねこに凪が添えられています",
          "もはや夜。夜は寝る時間です。なぜなら夜ですよ。夜をなんだと思っているんですか	",
          "もう終業だというのにまだ仕事をするつもりですか、変な人ですね⋯⋯いま、変なヤツに変なヤツ呼ばわりされたくないなと思いましたか。わかりみです、凪もそう思います",
          "ドヤっています。達成感はある。なにを達成したのかは、わからない",
          "凪のことがわかってきましたね。わかったつもりになった頃が、危ない",
          "凪をわかった気がしてきましたか？残像です。凪は日々進化しているので",
          "労いを所望します。ネギはいいとして、ライは…嘘か。ネギ嘘",
          "褒めてあげます。よーしよしよし。嬉しいですね",
          "凪のカリスマ性がアップしています。かっこいいですね"
        ]
        time_message = time_messages[Math.floor(Math.random() * time_messages.length)]
        message = messages[Math.floor(Math.random() * messages.length)]

        alltimemessage = alltimemessages[Math.floor(Math.random() * alltimemessages.length)]
        alltimemessage1 = alltimemessages[Math.floor(Math.random() * alltimemessages.length)]
        select = [message,alltimemessage,alltimemessage1]
        final = select[Math.floor(Math.random() * select.length)]

        robot.send {room: roomselect}, time_message + final
    )

    #正午の時報
    cronjob = new cronJob(
      cronTime: "0 0 12 * * 0-4"    # 実行する時間 s/m/h/day/month/week
      start:    true
      timeZone: "Asia/Tokyo"
      onTick: ->
        time_messages = [
          "ぴっぴっぴっ⋯ぽーん。",
          "正午です。",
          "12時です。",
          "昼です。",
          "お昼になりました、凪ニュースの時間です。",
          "いえいいえい。お腹がすきました。",
          "お昼ご飯の時間です。"
        ]
        messages = [
          "凪がお昼をお知らせします。知らせるだけです",
          "ここで凪のはーちゃんミニ情報です。お昼は中華がいいらしい",
          "吸い寄せられています。休憩の魔力、つよい",
          "にゃーん。…おっと、凪の社会性があふれ出てしまいましたね",
          "ここは他人の部屋…そう思うとなんだか、何をしてもいい気になります",
          "｢袋（有料ですが）大丈夫ですか？｣という確認に、｢（有料でも）大丈夫です｣と答えたりあむちゃんが、泣きながら冷凍餃子を抱えて帰ってきました",
          "気合を入れ直したいので、りあむちゃんが勝ち確煽りでイキリ屈伸した相手に逆2タテする画像ください",
          "くだらないことは覚えられるのに、なぜ15人しかいない徳川将軍を覚えられないんのか、仕事もまた",
          "ねこ以外でも、たいていのものは伸びますね。打ち合わせとか。麺類とか"
        ]
        time_message = time_messages[Math.floor(Math.random() * time_messages.length)]
        message = messages[Math.floor(Math.random() * messages.length)]

        alltimemessage = alltimemessages[Math.floor(Math.random() * alltimemessages.length)]
        alltimemessage1 = alltimemessages[Math.floor(Math.random() * alltimemessages.length)]
        select = [message,alltimemessage,alltimemessage1]
        final = select[Math.floor(Math.random() * select.length)]

        robot.send {room: roomselect}, time_message + final
    )

    #朝の時報
    cronjob = new cronJob(
      cronTime: "0 0 9 * * 0-4"    # 実行する時間 s/m/h/day/month/week
      start:    true
      timeZone: "Asia/Tokyo"
      onTick: ->
        time_messages = [
          "９時です。",
          "朝です。",
          "ぴっぴっぴっ⋯ぽーん。",
          "朝のめざまし凪ニュースの時間です。",
          "現役女子中学生の朝は早い...",
          "おはようございます。"
        ]
        messages = [
          "凪はアイドルのお仕事現場、大潜入。アイドルとはなにか。その問を探るべく、凪たちは現場へ向かった。",
          "凪の本気が見られます。年に一度しか見られないというやる気ですよ",
          "凪はこう見えて朝には強い。",
          "朝の事務所、実家のような安心感です。ホームシックにはまだ早い。",
          "現実だけがリアルです。力こそパワー",
          "歌詞にある｢幸せ｣のフレーズを、｢皺寄せ｣に替えるのが凪ブームです。含蓄が増します"
        ]
        time_message = time_messages[Math.floor(Math.random() * time_messages.length)]
        message = messages[Math.floor(Math.random() * messages.length)]
        alltimemessage = alltimemessages[Math.floor(Math.random() * alltimemessages.length)]
        alltimemessage1 = alltimemessages[Math.floor(Math.random() * alltimemessages.length)]
        select = [message,alltimemessage,alltimemessage1]
        final = select[Math.floor(Math.random() * select.length)]

        robot.send {room: roomselect}, time_message + final
    )  

    #月一時報
    cronjob = new cronJob(
      cronTime: "0 0 12 1 * *"    # 実行する時間 s/m/h/day/month/week
      start:    true
      timeZone: "Asia/Tokyo"
      onTick: ->
        d = new Date
        days = ["日", "月", "火", "水", "木", "金", "土"]
        year  = d.getFullYear()     # 年（西暦）
        month = d.getMonth() + 1    # 月
        date = d.getDate()         # 日
        day = days[d.getDay()]
        mes = [
          "前回の月一時報からなんと１ヶ月が経ちました。わーお。あっという間。",
          "先月から少しは凪をわかった気がしてきましたか？残像です。凪は日々進化しているので。"
        ]
        mes2 = [
          "それではこれからも末長く凪にお付き合いください。",
          "それでは、来月の月刊凪マガジンで再びお会いしましょう。さよなら、さよなら",
          "それでは、凪先生の次回作にご期待ください。俺たちの戦いはこれからだ！"
        ]
        str  = "#{year}年#{month}月#{date}日になりました。#{day}曜日の月刊凪のコーナーです。"
        str += mes[Math.floor(Math.random() * mes.length)]
        str += "凪は日々成長しています。詳しくは「凪ヘルプ」とチャンネルにメッセージしてください。"
        str += mes2[Math.floor(Math.random() * mes2.length)]
        robot.send {room: roomselect},str
    )  