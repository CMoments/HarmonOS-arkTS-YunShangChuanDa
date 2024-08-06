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
      Image($r('app.media.welcome')).width('100%')
      Row(){
        Image($r('app.media.online')).width('45%').onClick(()=>{
          router.pushUrl({url:""})
        })
        Image($r('app.media.mentaltest')).width('45%').onClick(()=>{
          router.pushUrl({url:""})
        })
      }.justifyContent(FlexAlign.SpaceAround).margin({top:15})
    }
    .width('100%').height('100%')
  }
}