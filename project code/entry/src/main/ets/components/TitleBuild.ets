import router from '@ohos.router'

@Component
@Entry
export default struct TitleBuild {
  title:string = ""

  build() {
    Stack({alignContent:Alignment.Start}){
      Text(this.title)
        .fontSize(15)
        .width('100%')
        .textAlign(TextAlign.Center)

      Text("关闭")
        .fontSize(15)
        .width(100)
        .textAlign(TextAlign.Center)
        .onClick(() => {
          router.back()
        })

      Image($r("app.media.back"))
        .width(20)
        .margin({left:10})
        .onClick(() => {
          router.back()
        })
    }.width("100%")
    .height(50)
  }
}