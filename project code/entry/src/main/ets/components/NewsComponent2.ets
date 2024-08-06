
import News from '../models/NewsModel'
@Component
@Preview
export default struct NewsComponent2 {

  @State groupMessages:News[] = [

    { Title: "四川大学师生热议党的二十届三中全会精神",
      content: "编者按：2024年7月15日至18日，中国共产党第二十届中央委员会第三次全体会议在京召开。全会高度评价新时代以来全面深化改革的成功实践和伟大成就，研究了进一步全面深化改革、推进中国式现代化问题，审议通过了《中共中央关于进一步全面深化改革、推进中国式现代化的决定》。四川大学广大师生第一时间认真学习、深入领会全会精神，纷纷表示要切实把思想和行动统一到党中央的决策部署上来，牢记初心使命，坚定理想信念，坚持守正创新，以改革精神推进学校各项工作，为学校高质量发展、为以中国式现代化全面推进中华民族伟大复兴贡献自己的力量。",
      Time: "2024-07-20" ,
      sendLog: $r('app.media.Log1')
    },

    { Title: "学校召开2024年春季学期工作总结会暨四项重点工作方案讨论会",
      content: "7月10日，学校在望江校区明德楼召开2024年春季学期工作总结会暨四项重点工作方案讨论会。校党委书记甘霖、校长汪劲松等在校校领导，校长助理，全体中层正职干部参加会议。甘霖主持会议。汪劲松指出，2024年上半年，在全校师生的共同努力下，学校认真做好了3方面重点工作：扎实开展党纪学习教育，紧扣“学党纪”主线，通过读书班、中心组学习会、“三会一课”、主题党日等形式，形成四级联动学《中国共产党纪律处分条例》的生动局面，同时，把开展党纪学习教育与落实学校重点工作相结合，使党纪学习教育成为推动学校高质量发展的有力过程。全力抓好“1+5”制度文件落地见效，以“三个一流”为引领，扎实推进大类招生培养改革，持续加强辅导员队伍建设，落细落实研究生导师职责，促进青年教师成长，稳步推进“双高计划”，学校各项事业取得积极进展。",
      Time: "2024-07-11" ,
      mainImage: $r('app.media.Report7'),
      secondImage: $r('app.media.background'),
      thirdImage: $r('app.media.background'),
      sendLog: $r('app.media.Log1')
    },

    {
      Title:"学校召开目标责任单位任期目标中期考核述职交流汇报会",
      content: "7月5日，学校在望江校区明德楼召开目标责任单位任期目标中期考核述职交流汇报会。校党委书记甘霖、校长汪劲松等校领导、任期目标考核工作小组成员、目标责任单位负责人、师生代表等参会。副校长赵长生主持会议。会上，学校各目标责任单位围绕党建与事业融合发展情况、重点工作推进情况，以及存在的问题不足与改进措施等方面进行了汇报交流。汪劲松代表学校对广大干部师生的辛勤付出表示感谢。他指出，过去两年各目标责任单位努力抓工作、干工作，各项事业有特色、有亮点、有成效，共同推动了学校高质量发展。",
      Time: "2024-07-06" ,
      mainImage: $r('app.media.Report8'),
      secondImage: $r('app.media.background'),
      thirdImage: $r('app.media.background'),
      sendLog: $r('app.media.Log1')
    },

    {
      Title:"四川大学2024届学生毕业典礼暨学位授予仪式隆重举行",
      content: "征程万里风正劲，逐浪潮头向未来。6月26日，四川大学2024届学生毕业典礼暨学位授予仪式在望江体育场隆重举行。校党委书记甘霖，校长汪劲松等全体在校校领导，高洁院士、张兴栋院士、李安民院士，杰出教授曹顺庆、钟本和、詹石窗、霍巍、徐玖平，校友代表、中国核动力研究设计院王广金研究员，各单位主要负责人，2024届毕业生及家长代表参加典礼。副校长游劲松主持。",
      Time: "2024-06-26" ,
      mainImage: $r('app.media.Report3'),
      secondImage: $r('app.media.Report4'),
      thirdImage: $r('app.media.Report5'),
      sendLog: $r('app.media.Log1')
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
