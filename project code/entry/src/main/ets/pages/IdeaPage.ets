import router from '@ohos.router'
@Entry
@Component
struct IdeaPage {
  @State message: string = 'Hello World'

  build() {

      Column() {
        Stack({alignContent:Alignment.Start}){
          Text("意见反馈")
            .fontSize(25)
            .fontWeight(500)
            .width('100%')
            .margin({top:20})
            .textAlign(TextAlign.Center)
          Image($r('app.media.back'))
            .width(30)
            .margin({top:20,left:20})
            .onClick(() => {
              router.back()
            })
        }.width("100%")
        .height(50)
        TextInput({placeholder:"写下你的问题"}).height(200)
        Button(){
          Text("提交").fontColor(Color.White).fontSize(20)
        }.backgroundColor(Color.Red).width('90%').height(50).type(ButtonType.Normal)
      }
      .width('100%')
      .height('100%')

  }
}