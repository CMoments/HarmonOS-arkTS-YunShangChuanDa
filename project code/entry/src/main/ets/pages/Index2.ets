import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Button() {
        Image($r('app.media.back')).width(30)
      }.margin({ top:30,right:290 }).width(30).backgroundColor(Color.White)
      .onClick(() => {
        router.back()
      })

      Scroll() {
        Column() {
          Row() {
            Text('第7周').fontSize(30).fontWeight(700).margin({right:10})
            Image($r('app.media.px')).width(80).margin({right:150})
          }.justifyContent(FlexAlign.Start).margin({bottom:25})
          Row() {
            Text('2023-2024学年1学期').fontWeight(400)
          }.justifyContent(FlexAlign.Start).width('87%')
          Image($r('app.media.pz')).width('100%').margin({top:25})
          Image($r('app.media.py')).width('100%')


        }
      }.height('100%').width('100%').margin({top:25})

    }
  }
}
