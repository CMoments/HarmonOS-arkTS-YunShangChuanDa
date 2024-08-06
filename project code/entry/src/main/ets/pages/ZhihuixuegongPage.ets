import TitleComponent from '../components/Titlecomponent'
import router from '@ohos.router'

@Entry
@Component
struct ZhihuixuegongPage {
  @State message: string = 'Hello World'

  build(){
    Column(){
      Column() {
        TitleComponent({title:"智慧学工"})
      }.height('10%').width('100%')
      Column(){
        Row(){ Button(){
          Image($r("app.media.p19")).width('100%')
        }.width('13%').margin({left:23}).backgroundColor(Color.White)
        .onClick(()=>{
          router.pushUrl({url:"pages/EvaluateIndexPage"})
        })
          Image($r("app.media.p13")).width('13%').margin({left:41.5})
        }.width('100%').justifyContent(FlexAlign.Start)
        Row(){
          Text("综合素质评价").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
          Text("智慧资助").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
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