@Entry
@Component
struct TouXiangPage {
  @State message: string = '请选择你的头像'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}