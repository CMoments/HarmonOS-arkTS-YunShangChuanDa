import TitleComponent from '../components/Titlecomponent'
@Entry
@Component
struct KeyanPage {
  @State message: string = 'Hello World'

  build(){
    Column(){
      Column() {
        TitleComponent({title:"科研"})
      }.height('10%').width('100%')
      Column(){
        Row(){
          Image($r("app.media.p12")).width('13%').margin({left:23})
        }.width('100%').justifyContent(FlexAlign.Start)
        Row(){
          Text("学术看板").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)

        }.width('100%').height(20)

      }


    }
    .height('100%')
    .height('100%')
    .backgroundImage($r("app.media.1_badge_1"))
    .backgroundImageSize({width:320,height:320})
    .backgroundImagePosition({x:15,y:300})
  }
}