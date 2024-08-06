import router from '@ohos.router'
@Component
export default struct Notice {
  @State message: string = 'Hello World'

  build() {

    Column() {
      Row() {
        Text("通知").fontSize(25).fontWeight(700)
      }.width('90%')
      .margin({ top: 50 })

      Column() {
      Flex() {
        Column() {
          Image($r('app.media.5_wallet'))
            .width(35)
            .margin({ left: 20 })
        }

        Column() {
          Row() {
            Text("交易通知").fontWeight(400).margin({ left: 16 }).fontSize(20)
              .width('100%')
          }

          Row() {
            Text("暂无通知")
              .width('100%')
              .margin({ left: 18 })
              .fontColor("#9C9C9C")
          }.margin({ top: 10 })
        }
      }.margin({ top: 20 }).border({ width: { bottom: 1 }, color: "#F4F6F7" })
      .onClick(() => {
        router.pushUrl({ url: "pages/JiaoYiTongZhi" })
      })


      Flex() {
        Column() {
          Image($r('app.media.5_radio'))
            .width(40)
            .margin({ left: 20 })
        }

        Column() {
          Row() {
            Text("学校通知").fontWeight(400).margin({ left: 16 }).fontSize(20)
              .width('100%')
          }

          Row() {
            Text("暂无通知")
              .width('100%')
              .margin({ left: 18 })
              .fontColor("#9C9C9C")
          }.margin({ top: 10 })
        }
      }.margin({ top: 20 }).border({ width: { bottom: 1 }, color: "#F4F6F7" })
      .onClick(() => {
        router.pushUrl({ url: "pages/XueXiaoTongZhi" })
      })


      Flex() {
        Column() {
          Image($r('app.media.5_message'))
            .width(40)
            .margin({ left: 20 })
        }

        Column() {
          Row() {
            Text("应用通知").fontWeight(400).fontSize(20)
            Text("2024-06-12 14:45:53").fontColor("#9C9C9C").fontSize(15)
          }.justifyContent(FlexAlign.SpaceAround).width('100%')

          Row() {
            Text("[班级]团日活动--叶韵艾香即将开启")
              .width('100%')
              .margin({ left: 18 })
              .fontColor("#9C9C9C")
          }.margin({ top: 10 })
        }
      }.margin({ top: 20 }).border({ width: { bottom: 1 }, color: "#F4F6F7" })
      .onClick(() => {
        router.pushUrl({ url: "pages/YinYongTongZhi" })
      })
    }.margin({top:20})
    }
    .height('100%')
    .width('100%')
}
}