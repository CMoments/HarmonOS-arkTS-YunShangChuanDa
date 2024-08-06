import TitleComponent from '../components/Titlecomponent'
@Entry
@Component
struct ShenpiPage9 {
  @State message: string = 'Hello World'

  build() {

    Column() {
      Row() {
        TitleComponent({ title: "快速审批"})
      }.width('100%')
      Column(){
        Column() {
          Image($r("app.media.9_background")).width(100)
        }.justifyContent(FlexAlign.Center)

        Row() {
          Text("暂无内容")
        }
      }.layoutWeight(1).justifyContent(FlexAlign.Center)
  }.width('100%')
  .height('100%')
  }
}