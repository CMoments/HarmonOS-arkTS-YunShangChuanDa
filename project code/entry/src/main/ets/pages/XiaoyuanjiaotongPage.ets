import TitleComponent from '../components/Titlecomponent'
import router from '@ohos.router'

@Entry
@Component
struct XiaoyuanjiaotongPage {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Column() {
        TitleComponent({ title: "校园交通" })
      }.height('10%').width('100%')

      Column() {
        Row() { Button(){
          Image($r("app.media.p14")).width('100%')
        }.width('13%').margin({left:23}).backgroundColor(Color.White)
        .onClick(()=>{
          router.pushUrl({url:"pages/SchoolBusTimeTable"})
        })
        }.width('100%').justifyContent(FlexAlign.Start)

        Row() {
          Text("校车时刻表").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)

        }.width('100%').height(20)

      }
    }.height('100%')
    .height('100%')
    .backgroundImage($r("app.media.1_badge_1"))
    .backgroundImageSize({width:320,height:320})
    .backgroundImagePosition({x:15,y:300})
  }
}