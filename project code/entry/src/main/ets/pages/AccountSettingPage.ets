import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
@Entry
@Component
struct AccountSettingPage {
  @State message: string = 'Hello World'

  build() {
      Column() {
        Stack({alignContent:Alignment.Start}){
          Text("设置")
            .fontSize(25)
            .fontWeight(500)
            .width('100%')
            .margin({top:20})
            .textAlign(TextAlign.Center)
          Image($r('app.media.back'))
            .width(30)
            .margin({top:20,left:20})
            .height(50).onClick(() => {
            router.back()
          })
        }.width("100%")

        Row() {
          Row() {
              Text("注销账号").fontWeight(450).fontSize(18)
          }.margin({ left: 10 })
          Image($r('app.media.back_icon'))
            .width(20).margin({left:200})
        }.border({width:{bottom:1},color:"#F3F3F3"})
        .width('90%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)
        .margin({ top: 10 }).onClick(()=>{
          promptAction.showDialog({
            title: '                注销账号',
            message: '云上川大保障您的个人信息被妥善保管，不会泄露。账号注销后，个人信息将不可恢复，请谨慎操作。',
            buttons: [
              {
                text: '确定注销',
                color: '#000000',
              },
              {
                text: '取消',
                color: '#000000',

              }
            ],
          })
        })
        Row() {
          Row() {
            Text("清除缓存").fontWeight(450).fontSize(18)
          }.margin({ left: 10 })
          Text("19.67M").fontSize(18)//这里要改成缓存数据大小
        }.border({width:{bottom:1},color:"#F3F3F3"})
        .width('90%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)
        .margin({ top: 10 }).onClick(()=>{
          router.pushUrl({url:""})
        })
        Row() {
          Row() {
            Text("登录记录").fontWeight(450).fontSize(18)
          }.margin({ left: 10 })
          Image($r('app.media.back_icon'))
            .width(20).margin({left:200})
        }.border({width:{bottom:1},color:"#F3F3F3"})
        .width('90%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)
        .margin({ top: 10 }).onClick(()=>{
          router.pushUrl({url:"pages/LandingRecordPage"})
        })
        Row() {
          Row() {
            Text("关于").fontWeight(450).fontSize(18)
          }.margin({ left: 10 })
          Image($r('app.media.back_icon'))
            .width(20).margin({left:200})
        }.border({width:{bottom:1},color:"#F3F3F3"})
        .width('90%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)
        .margin({ top: 10 }).onClick(()=>{
          router.pushUrl({url:"pages/AboutPage"})
        })
        Button("切换账号")
          .width('90%')
          .backgroundColor("#FFFFFF")
          .fontColor(Color.Black)
          .fontSize(18)
          .fontWeight(450)
          .margin({top:370})
          .border({width:{bottom:1,top:1},color:"#F3F3F3"})
          .onClick(()=>{
            router.pushUrl({url:"pages/ChangePage"})
          })
        Button("退出登录")
          .width('90%')
          .backgroundColor("#FFFFFF")
          .fontColor(Color.Black)
          .fontSize(18)
          .fontWeight(450)
          .margin({top:10})
          .border({width:{bottom:1,top:1},color:"#F3F3F3"})
          .onClick(()=>{
            router.pushUrl({url:"pages/Index0"})
          })
  }
}}