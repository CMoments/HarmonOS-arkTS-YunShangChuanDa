import router from '@ohos.router'
@Entry
@Component
struct JiaoYiTongZhi {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row(){
        Image($r('app.media.back'))
          .width(30)
          .height(30)
      }.justifyContent(FlexAlign.Start)
      .width('90%')
      .margin({top:30})
      .onClick(()=>{
        router.back()
      })

      Row(){
        Text("学校通知")
          .fontSize(26)
          .fontWeight(600)
      }.width('90%')
      .margin({top:40})

      Image($r('app.media.oh'))
        .width(300)
        .margin({top:90})

      Text("没有通知")
        .fontWeight(350)
    }.backgroundColor("#F9F9F9")
    .width('100%')
    .height('100%')
  }
}