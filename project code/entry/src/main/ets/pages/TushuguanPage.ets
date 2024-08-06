import TitleComponent from '../components/Titlecomponent'
@Entry
@Component
struct TushuguanPage {
  @State message: string = 'Hello World'

  build(){
  Column(){
    Column() {
      TitleComponent({title:"图书馆"})
    }.height('10%').width('100%')
    Column(){
      Row(){
        Image($r("app.media.p7")).width('13%')
        Image($r("app.media.p8")).width('13%')
        Image($r("app.media.p9")).width('13%')
        Image($r("app.media.p10")).width('13%')
      }.width('100%').justifyContent(FlexAlign.SpaceAround)
      Row(){
        Text("图书检索预约").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
        Text("在借图书").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
        Text("在约图书").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
        Text("借书历史").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
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