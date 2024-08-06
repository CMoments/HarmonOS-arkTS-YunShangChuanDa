
import News from '../models/NewsModel'
@Component
@Preview
export default struct NewsComponent3 {

  @State groupMessages:News[] = [

    { Title: "我院代表队参加ICC国际刑事法院模拟法庭竞赛（中文）海牙国际赛获得全球亚军",
      content: "我院代表队在国际刑事法院第一审判庭领奖）2024年7月15日至19日，我院代表队参加2024年国际刑事法院中文模拟法庭竞赛（ICC中文赛）海牙决赛周，以出色的表现，获得ICC中文赛海牙国际赛全球亚军。这是我院代表队首次参加ICC中文赛海牙国际赛，代表队由余建川、魏宁担任指导老师，队员为法学院2021级本科生杨景茹、朱曦、万欣璐、哈丽米热·库尔班江、黄赟。",
      Time: "2024-07-20" ,
      mainImage: $r('app.media.Report9'),
      secondImage: $r('app.media.Report10'),
      thirdImage: $r('app.media.Report11'),
      sendLog: $r('app.media.Log2'),
      sendTime: $r('app.media.Log1'),
      send: "法学院"
    },

    { Title: "我校获国家科技进步一等奖",
      content: "6月24日上午,2023年度国家科学技术奖励大会在人民大会堂隆重召开，四川大学共有5项成果获国家科学技术奖，其中，我校作为第一完成单位的项目获国家科技进步奖一等奖1项，作为参与单位完成的项目获国家技术发明奖一等奖1项、国家技术发明奖二等奖1项、国家科技进步奖二等奖2项。高分子科学与工程学院、高分子材料工程国家重点实",
      Time: "2024-06-24" ,
      mainImage: $r('app.media.Report1'),
      secondImage: $r('app.media.Report2'),
      thirdImage: $r('app.media.background'),
      sendLog: $r('app.media.Log2'),
      sendTime: $r('app.media.Log1'),
    },


    {
      Title:"四川大学2024届学生毕业典礼暨学位授予仪式隆重举行",
      content: "征程万里风正劲，逐浪潮头向未来。6月26日，四川大学2024届学生毕业典礼暨学位授予仪式在望江体育场隆重举行。校党委书记甘霖，校长汪劲松等全体在校校领导，高洁院士、张兴栋院士、李安民院士，杰出教授曹顺庆、钟本和、詹石窗、霍巍、徐玖平，校友代表、中国核动力研究设计院王广金研究员，各单位主要负责人，2024届毕业生及家长代表参加典礼。副校长游劲松主持。",
      Time: "2024-06-26" ,
      mainImage: $r('app.media.Report3'),
      secondImage: $r('app.media.Report4'),
      thirdImage: $r('app.media.Report5'),
      sendLog: $r('app.media.Log2'),
      sendTime: $r('app.media.Log1'),
    },

    {
      Title:"四川大学2024届学生毕业典礼暨学位授予仪式隆重举行",
      content: "征程万里风正劲，逐浪潮头向未来。6月26日，四川大学2024届学生毕业典礼暨学位授予仪式在望江体育场隆重举行。校党委书记甘霖，校长汪劲松等全体在校校领导，高洁院士、张兴栋院士、李安民院士，杰出教授曹顺庆、钟本和、詹石窗、霍巍、徐玖平，校友代表、中国核动力研究设计院王广金研究员，各单位主要负责人，2024届毕业生及家长代表参加典礼。副校长游劲松主持。",
      Time: "2024-06-26" ,
      mainImage: $r('app.media.Report3'),
      secondImage: $r('app.media.Report4'),
      thirdImage: $r('app.media.Report5'),
      sendLog: $r('app.media.Log2'),
      sendTime: $r('app.media.Log1'),
    }


  ]



  build(){
    Column(){
      List() {
        ForEach(this.groupMessages, (item: News, index) => {
          ListItem() {
            Column() {

              Row() {
                Text(item.Title)
                  //.backgroundColor("#0087FC")
                  .width('95%')
                  .maxLines(1)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
                  .height(30)
                  .fontColor('#ff8f1f1f')
                  .textAlign(TextAlign.Start)
                  .fontWeight(700)
                  .fontSize(20)
              }
              .height(30)
              .width('95%')

              //标题打印

              Row() {
                Text(item.content)
                  .margin({top:6})
                  .textAlign(TextAlign.Start)
                  .fontSize(12)
                  .width('95%')
                  .maxLines(4)
                  .lineHeight(20)
                  .height(140)
                  .textOverflow({ overflow: TextOverflow.Ellipsis })
              }
              .margin({bottom:20})
              .height(60)
              //首页摘要

              Row(){
                Image(item.mainImage)
                  .height(100)
                  .width(100)
                Image(item.secondImage)
                  .height(100)
                  .width(100)
                Image(item.thirdImage)
                  .height(100)
                  .width(100)
              }
              .width('95%')
              .height(100)
              .justifyContent(FlexAlign.SpaceAround)
              .margin({top:10})

              //首页组图展示


              Row() {
                Column(){
                  Image(item.sendLog)
                    .height(20)
                }
                .margin({right:5})

                Column(){
                  Text(item.send)
                    .height(20)
                    .fontColor(Color.Grey)
                    .margin({right:5})
                }

                Column(){
                  Image(item.sendTime)
                    .height(20)
                }

                Column() {
                  Text(item.Time)
                    .fontSize(16)
                    .fontColor(Color.Grey)
                    .textAlign(TextAlign.Start)
                }
              }
              .height(20)
              .width('100%')
              .margin({left:20,bottom:100,top:10})
              .justifyContent(FlexAlign.Start)


            }
            .width('100%')
            .height(100)
            .margin({top:10})

          }.margin({bottom:170})

        }, (item: News, index: number) => JSON.stringify(item) + index)


      }
      .scrollBar(BarState.Off)
      .width('100%')
      .layoutWeight(1)
      .margin({ top: 20 ,bottom:10})
      .divider({ color: '#ffacacac', strokeWidth: 1 })


    }
    .width('100%')
    .height('100%')
    .margin({left:20})
    .margin({right:20})

  }
}
