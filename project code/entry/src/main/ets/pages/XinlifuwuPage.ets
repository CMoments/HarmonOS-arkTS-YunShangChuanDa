import TitleComponent from '../components/Titlecomponent'
import router from '@ohos.router'

@Entry
@Component
struct XinlifuwuPage {
  @State message: string = 'Hello World'

build(){
  Column(){
    Column() {
      TitleComponent({title:"心理服务"})
    }.height('10%').width('100%')
    Column(){
      Row(){
        Button(){
          Image($r("app.media.p11")).width('100%')
        }.width('13%').margin({left:23}).backgroundColor(Color.White)
        .onClick(()=>{
          router.pushUrl({url:"pages/HealthIndexPage"})
        })

      }.width('100%').justifyContent(FlexAlign.Start)
      Row(){
        Text("预约与测评").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)

      }.width('100%').height(20)

    }


  }
  .height('100%')
}
}
