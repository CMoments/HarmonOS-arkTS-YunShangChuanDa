import router from '@ohos.router'
@Entry
@Component
@Preview
export default struct HealthHomePage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Stack({alignContent:Alignment.Start}){
        Text("学生端 - 心理健康...")
          .fontSize(20)
          .fontWeight(400)
          .width('100%')
          .margin({top:20,left:30})
          .textAlign(TextAlign.Center)
        Image($r('app.media.back'))
          .width(30)
          .margin({top:20,left:20})
          .onClick(() => {
            router.back()
          })
        Text("关闭").margin({top:20,left:50}).fontSize(20).fontWeight(400).onClick(() => {
          router.back()
        })
      }.width("100%")
      Row(){
        Image($r('app.media.diqiu')).width(18)
        Text("切换语言").margin({left:8}).fontColor("#397ed6")
      }.margin({top:8,left:248}).backgroundColor("#e3edf7").onClick(()=>{
        router.pushUrl({url:""})
      })
      .width('30%').height(40).justifyContent(FlexAlign.Center)
      .borderRadius(5)
      Row(){
        Image($r('app.media.vipphoto')).width('20%').margin({left:30})
        Column(){
          Text("董海玄").fontSize(20).fontWeight(500)
          Text("No.2020202000220").fontSize(15).fontColor("#7499d0").margin({top:8})
        }.alignItems(HorizontalAlign.Start).width("100%").margin({left:10})
      }
      Row(){
        Image($r('app.media.change')).width(100).onClick(()=>{
          router.pushUrl({url:""})
        })
        Image($r('app.media.person')).width(100).margin({left:15}).onClick(()=>{
          router.pushUrl({url:"pages/"})
        })
      }.margin(50).justifyContent(FlexAlign.Start).width('100%').margin({left:50,top:50})
      Button(){
        Text("退出登录").fontColor('#de9491')
      }.width('70%').height(40).borderColor('#de9491').backgroundColor(Color.White)
      .borderWidth(1).margin({top:60}).onClick(() => {
        router.pushUrl({url:"pages/Index0"})
      })
    }
    .width('100%').height('100%')
  }
}