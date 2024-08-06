@Component
@Preview
@Entry
export  default struct  Daiyue{

  build(){
    Column() {
      Column() {
        Image($r("app.media.9_background")).width(100)
      }.justifyContent(FlexAlign.Center)

      Row() {
        Text("暂无内容")
      }

    }.width('100%')
  }

}