import TitleComponent from '../components/Titlecomponent'
import router from '@ohos.router'

@Entry
@Component
struct OAbangong {
  @State message: string = 'Hello World'

  build() {
    Column(){
      Column() {
   TitleComponent({title:"OA办公"})
      }.height('10%').width('100%')
      Column(){
        Row(){
          Image($r("app.media.p1")).width('13%')
            .onClick(()=>{
              router.pushUrl({url:'pages/DaibanPage9'})
            })
          Image($r("app.media.p2")).width('13%')
          Image($r("app.media.p3")).width('13%')
          Image($r("app.media.p4")).width('13%')
        }.width('100%').justifyContent(FlexAlign.SpaceAround)
          Row(){
            Text("待办事项").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
              .onClick(()=>{
                router.pushUrl({url:'pages/DaibanPage9'})
              })
            Text("工作沟通").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
            Text("法人证书申请").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
            Text("流程新建/查询").fontSize(14).width('25%').textAlign(TextAlign.Center).fontWeight(500)
          }.width('100%').height(20)
         Row(){
           Text("(学生）").fontSize(14).margin({left:100})
         }
          Row(){
            Image($r('app.media.p5')).width('13%').margin({left:22})
            Image($r('app.media.p6')).width('13%').margin({left:42.5})
          }.width('100%')
        Row(){
          Text("活动中心场地").fontSize(14).width('25%').textAlign(TextAlign.Center)
          Text("日程管理").fontSize(14).width('25%').textAlign(TextAlign.Center)
        }.justifyContent(FlexAlign.Start).width('100%')
        Row(){
          Text("申请").fontSize(14).width('25%').textAlign(TextAlign.Center)
        }.width('100%')


      }



    }
    .height('100%')
    .backgroundImage($r("app.media.1_badge_1"))
    .backgroundImageSize({width:320,height:320})
    .backgroundImagePosition({x:15,y:300})
  }
}