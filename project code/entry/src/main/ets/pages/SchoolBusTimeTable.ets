import TitleBuild from '../components/TitleBuild'
@Entry
@Component
struct SchoolBusTimeTable {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row() {
        TitleBuild({ title: "校园交通车运行时间表" })
      }


      Row() {

        Text("校园交通车运行时间表")
          .fontSize(25)

      }
      .margin({top:20,left:20})
      .width('100%')
      .justifyContent(FlexAlign.Start)

      Row(){
        Text("四川大学")
          .fontColor('#5F92DE')

        Text("2024-01-19")
          .margin({left:20})
          .fontColor(Color.Gray)

      }
      .width('100%')
      .margin({ top: 20 ,left:20})


      Image($r("app.media.SchoolBusTimeTable"))
        .width('100%')
        .height('70%')
        .objectFit(ImageFit.Fill).margin(15)
    }
    .height('100%')
    .height('100%')
  }
}