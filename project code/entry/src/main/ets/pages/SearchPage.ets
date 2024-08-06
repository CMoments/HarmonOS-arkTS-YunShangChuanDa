import router from '@ohos.router';

@Entry
@Component
struct SearchPage {
  @State message: string = '搜索页面';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('SearchPageHelloWorld')
        .fontSize(20)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(()=>{
          router.back()
        })
    }
    .height('100%')
    .width('100%')
  }
}