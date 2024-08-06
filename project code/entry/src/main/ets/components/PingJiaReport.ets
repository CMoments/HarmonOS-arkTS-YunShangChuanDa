import { router } from '@kit.ArkUI'

@Component

export default struct Report{
  build() {
    Column() {
      Flex() {
        Row() {
          Image($r('app.media.back'))
            .width(25)
          Text("关闭")
            .width('100%')
            .fontSize(18)
        }.onClick(() => {
          router.back
        })
        .width('20%')

        Column() {
          Text("评测报告")
            .width('100%')
            .fontSize(17)
            .margin({ top: 3 })
        }.justifyContent(FlexAlign.Center)
        .width('90%')
        .margin({left:75})
      }

      Row(){
        Text("学生综合评价")
          .width('100%')
          .fontWeight('100%')
          .fontSize(18)
          .margin({left:10})

      }
      .height(60)
      .justifyContent(FlexAlign.Center)

      Row(){
        Image($r('app.media.nb'))
          .width(180)
          .margin({left:90})
      }.height('100%')
      .width('100%')
      .margin({bottom:90})
      .backgroundColor("#F7F7F7")
    }
    .height('100%')
    .width('100%')
  }
}
