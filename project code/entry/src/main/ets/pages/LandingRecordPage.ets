import router from '@ohos.router'
@Entry
@Component
struct LandingRecordPage {
  @State message: string = 'Hello World'

  build() {

      Column() {
        Stack({alignContent:Alignment.Start}){

          Image($r('app.media.back'))
            .width(30)
            .margin({top:20,left:20})
            .onClick(() => {
              router.back()
            })
        }.width("100%")
        .height(50)
        Stack({alignContent:Alignment.Start}){
          Text("登陆记录")
            .fontSize(25)
            .fontWeight(600)
            .width('100%')
            .margin({top:15,left:20})
            .textAlign(TextAlign.Start)

        }.width("100%")
        .height(80)
        Text("以下是您最近三个月的登录记录，如果存在异常，尽快修改密码")
          .margin({left:9}).fontColor(Color.Gray)
        //这里应该用个列表
        Row() {
          Row() {
            Column() {
              Text("REP-AN00").fontWeight(600).fontSize(25)
              Text("2024-07-20 15:51:59").fontColor("#D8DCDF").margin({top:7}).fontSize(15)
            }.alignItems(HorizontalAlign.Start)
            .margin({ left: 7 })
          }
          Text("自动登录").fontColor(Color.Gray)
        }
        .width('90%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)
        .margin({ top: 40 })

      }
      .width('100%')
      .height('100%')
  }
}