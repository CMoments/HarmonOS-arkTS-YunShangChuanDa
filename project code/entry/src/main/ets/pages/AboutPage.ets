import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
@Entry
@Component


struct AboutPage {
  @State message: string = 'Hello World'

  build() {
      Column() {
        Stack({alignContent:Alignment.Start}){
          Image($r('app.media.back'))
            .width(30)
            .margin({top:20,left:20})
            .onClick(()=>{
              router.back()
            })
        }.width("100%")
        .height(50)
          Column(){
            Image($r('app.media.1_badge')).width(110).margin(20)
            Text("云上川大").fontSize(25)
              .fontWeight(500)
              .width('100%')
              .margin({top:10})
              .textAlign(TextAlign.Center)
            Text("Version 1.1.7").fontSize(25)
              .fontWeight(400)
              .fontColor('#787979')
              .width('100%')
              .margin({top:5})
              .textAlign(TextAlign.Center)

          }
        Row() {
          Row() {
            Text("检查更新").fontWeight(450).fontSize(18)
          }.margin({ left: 10 })
          Image($r('app.media.back_icon'))
            .width(20).margin({left:200})
        }.border({width:{bottom:1},color:"#F3F3F3"})
          //这里要整个弹窗
        .width('90%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)
        .margin({ top: 10 }).onClick(()=>{
          router.pushUrl({url:""})
        })
        Row(){
          Text("隐私政策").fontColor(Color.Blue).onClick(()=>{
          router.pushUrl({url:""})
        })
          Text("丨").fontColor(Color.Blue)
          Text("用户协议").fontColor(Color.Blue).onClick(()=>{
          router.pushUrl({url:""})
        })
        }.margin({top:400})
      }
      .width('100%')
      .height('100%')
  }
}