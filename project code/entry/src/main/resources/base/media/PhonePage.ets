import router from '@ohos.router';

@Entry
@Component

struct PhonePage {

  build() {

    Column() {

      Row() {
        Image($r('app.media.back'))
          .height(20)
          .onClick(() => {
            router.back()
          })

        Text("关闭")
          .height(20)
          .margin({ right: 80 })

        Text("校内办公电话")
          .height(20)
          .textAlign(TextAlign.Center)
          .fontWeight(700)


      }
      .justifyContent(FlexAlign.Start)
      .height(60)
      .width('100%')
      .backgroundColor('#fffffbfb')
      .margin({ bottom: 10 })

      //页
        Column() {
          Column() {

            Text("党委办公室、校长办公室")
              .fontColor('#ffde3905')
              .margin({ top: 20, left: 15 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("望江校区")
              .fontColor('#ffde3905')
              .margin({ top: 20 })
              .margin({ left: 25 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
          }


          Column() {
            Text("科室名称：综合科")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公电话:85996789、85406789")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公地点:明德楼（行政楼）335A")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40, bottom: 20 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
          }


          Column() {
            Text("科室名称：秘书科")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公电话:85999926、85402441")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公地点:明德楼（行政楼）323")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40, bottom: 20 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
          }

          Column() {
            Text("科室名称：政策研究室")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公电话:85997699、85465079")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公地点:明德楼（行政楼）335")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40, bottom: 20 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
          }

          Column() {
            Text("科室名称：机要室")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公电话:85999968、85402997")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公地点:明德楼（行政楼）327")
              .fontColor('#ff211b1b')
              .margin({ top: 20 })
              .margin({ left: 40, bottom: 20 })
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
          }



            Text("科室名称：交流合作科")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40})
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公电话:85998698、85465088")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40})
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公地点:明德楼（行政楼）335A")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40,bottom:20})
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);


            Text("科室名称：总值班室")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40})
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公电话:85999928、85465098、24小时值班电话：85995000")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40})
              .fontSize(14)
              .width('80%')
              .height(40)
              .textAlign(TextAlign.Start);
            Text("办公地点:明德楼（行政楼）329")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40,bottom:20})              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);

            Text("科室名称：中共四川大学委员会保密委员会办公室（四川大学保密委员会办公室）")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40})
              .fontSize(14)
              .width('80%')
              .height(40)
              .textAlign(TextAlign.Start);
            Text("办公电话:85999968、85404019")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40})
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);
            Text("办公地点:明德楼（行政楼）323")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40,bottom:20})
              .fontSize(14)
              .width('80%')
              .height(20)
              .textAlign(TextAlign.Start);

            Text("科室名称：信访办公室")
              .fontColor('#ff211b1b')
              .margin({ top: 20})
              .margin({left:40})
              .fontSize(14)
              .width('80%')
              .height(40)
              .textAlign(TextAlign.Start);






          }
          .width('90%')
          .height('90%')
          .backgroundColor('#ffeacaca')
          .borderRadius(5)
          .alignItems(HorizontalAlign.Start)


        }
        .width('100%')
        .height('100%')
        .backgroundColor('#ffb00909')


      }
}





