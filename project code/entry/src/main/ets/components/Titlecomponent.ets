import router from '@ohos.router'

@Component
@Preview
export default struct TitleComponent {
  title:string = ""

  build() {
    Stack({alignContent:Alignment.Start}){
      Text(this.title)
        .fontSize(20)
        .fontWeight(700)
        .width('100%')
        .textAlign(TextAlign.Center)
      Image($r("app.media.back2"))
        .width(30)
        .onClick(() => {
          router.back()
        })
    }.width("100%")
    .height(50)
  }
}
