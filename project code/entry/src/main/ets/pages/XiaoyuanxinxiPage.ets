import TitleComponent from '../components/Titlecomponent'
import router from '@ohos.router'

@Entry
@Component
struct XiaoyuanxinxiPage {
  @State message: string = 'Hello World'

  build(){
    Column(){
      Column() {
        TitleComponent({title:"校园信息"})
      }.height('10%').width('100%')
      Column(){
        Row(){ Button(){
          Image($r("app.media.p15")).width('100%')
        }.width('13%').margin({left:23}).backgroundColor(Color.White)
        .onClick(()=>{
          router.pushUrl({url:"pages/XiaoliPage"})
        })
          Button(){
            Image($r("app.media.p16")).width('100%')
          }.width('13%').margin({left:41.5}).backgroundColor(Color.White)
          .onClick(()=>{
            router.pushUrl({url:"pages/PhonePage"})
          })
          Button(){
            Image($r("app.media.p17")).width('100%')
          }.width('13%').margin({left:44}).backgroundColor(Color.White)
          .onClick(()=>{
            router.pushUrl({url:"pages/KebiaoPage"})
          })

        }.width('100%').justifyContent(FlexAlign.Start)
        Row(){
          Text("校历").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
          Text("校园电话").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
          Text("我的课表").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
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