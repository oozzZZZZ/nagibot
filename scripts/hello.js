'use strict';
module.exports = robot => {

  robot.respond(/こんにちは/i, msg => {
    const user_name = msg.message.user.name;
    msg.reply(`こんにちは、${user_name}さん`);
  });

  robot.respond(/(おはよう(|ございます))/i, msg => {
    const user_name = msg.message.user.name;
    msg.reply(`おはようございます、${user_name}さん`);
  });

  robot.respond(/(お疲れ|おつかれ)(様|さま|)/i, msg => {
    const user_name = msg.message.user.name;
    msg.reply(`お疲れさまです、${user_name}さん`);
  });

  robot.hear(/(疲れ|つかれ)た/i, msg => {
    const user_name = msg.message.user.name;
    msg.reply(`お疲れさまです、${user_name}さん`);
  });

  robot.hear(/(何時|なんじ)(？|ですか|)(？|)/i, msg => {
    const date = new Date, user_name = msg.message.user.name;
    msg.reply(`お疲れさまです、${user_name}さん。${date.getHours()}時です。${date.getMinutes()}分でもあり、${date.getSeconds()}秒でもあります。`);
  });

  robot.hear(/(よろしく|宜しく)(お願い|おねがい)(します|いたします|致します(!|！|)|)/i, msg => {
    const date = new Date, user_name = msg.message.user.name;
    msg.reply(`${user_name}さん。凪です。ネギでも凧でもありません。このチャンネルの主です。どうぞよろしく。`);
  });

};
