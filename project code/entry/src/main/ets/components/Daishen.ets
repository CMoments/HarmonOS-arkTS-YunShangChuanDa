import router from '@ohos.router'
@Component
@Preview
@Entry
export  default struct  Daishen{

  build(){
    Column() {
      Column(){
        Column() {
          Image($r("app.media.9_background")).width(100)
        }.justifyContent(FlexAlign.Center)

        Row() {
          Text("暂无内容")
        }
      }.layoutWeight(1).justifyContent(FlexAlign.Center)

      Button("快速审批").margin({bottom:0})
        .onClick(()=>{
          router.pushUrl({url:"pages/ShenpiPage9"})
        }).fontSize(20).backgroundColor(Color.White).fontColor("#4D9CFC").fontWeight(700)




    }.width('100%').height('100%')
  }

}