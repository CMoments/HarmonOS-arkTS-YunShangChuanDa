import { router } from '@kit.ArkUI';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';

  build() {
    Column() {
      Flex() {
        Row() {
          Image($r('app.media.back'))
            .width(25)
          Text("关闭")
            .width('100%')
            .fontSize(18)
        }.onClick(() => {
          router.back()
        })
        .width('20%')

        Column() {
          Text("校历-四川大学")
            .width('100%')
            .fontSize(17)
            .margin({ top: 3 })
        }.justifyContent(FlexAlign.Center)
        .width('90%')
        .margin({left:75})
      }

      List(){

        ListItem(){
          Row(){
            Image($r('app.media.yuanhui'))
              .width(60)
            Column(){
              Image($r('app.media.xiaoming'))
                .width(90)

              Text("SICHUAN  UNIVERSITY")
                .fontSize(9)
                .fontWeight(20)
                .fontColor(Color.White)
                .margin({top:5})
            }
          }.backgroundColor("#BB2C16")
          .width('100%')
          .height(60)
          .justifyContent(FlexAlign.Center)

        }

        ListItem(){
          Image($r("app.media.sb"))
            .width('100%')
        }

        ListItem(){
          Column(){
            Text("校历")
              .width('100%')
              .height(90)
              .fontSize(23)
              .margin({ left: 300 })
          }
          .justifyContent(FlexAlign.Center)
        }

        ListItem(){
          Column(){
            Text("发布时间：2018年02月28日 编辑：web")
          }.backgroundColor("#FAFAFA")
          .width('100%')
          .height(40)
        }

       ListItem(){
         Image($r("app.media.py1"))
       }.margin({top:70})


        ListItem(){
          Image($r("app.media.py2"))
        }
        .margin({top:70})

      }
    }
    .height('100%')
    .width('100%')
    .offset({
      x:0,
      y:0
    })
  }
}