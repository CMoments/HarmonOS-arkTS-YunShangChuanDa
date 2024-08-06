import TitleComponent from '../components/Titlecomponent'
@Entry
@Component
struct GuojichuPage {
  @State message: string = 'Hello World'

  build(){
    Column(){
      Column() {
        TitleComponent({title:"国际处"})
      }.height('10%').width('100%')
      Column(){
        Row(){
          Image($r("app.media.p18")).width('13%').margin({left:23})
        }.width('100%').justifyContent(FlexAlign.Start)
        Row(){
          Text("因公出国").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
        }.width('100%').height(20)

        Row() {
          Text("(境)申报……").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500).margin({left:9})
        }.width('100%').justifyContent(FlexAlign.Start)
      }


    }
    .height('100%')
    .height('100%')
    .backgroundImage($r("app.media.1_badge_1"))
    .backgroundImageSize({width:320,height:320})
    .backgroundImagePosition({x:15,y:300})
  }
}