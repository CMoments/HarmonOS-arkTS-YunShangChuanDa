import { router } from '@kit.ArkUI';
@Preview
@Entry
@Component
struct AddingMessagePage {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Stack({alignContent:Alignment.Start}){
        Text("评价方案附件信息")
          .fontSize(20)
          .fontWeight(400)
          .width('100%')
          .margin({top:20,left:20})
          .textAlign(TextAlign.Center)
        Image($r('app.media.back'))
          .width(20)
          .margin({top:20,left:20})
          .onClick(() => {
            router.back()
          })
        Text("关闭").margin({top:20,left:40}).fontSize(20).fontWeight(400).onClick(() => {
          router.back()
        })
      }.width("100%")
      Column(){
        Row(){
          Text("附件2：智育发展性评价考核办法说明").margin({left:10}).fontWeight(700).onClick(() => {
            router.pushUrl({url:""})
          })
        }.backgroundColor(Color.White).width('95%').height("10%").margin({top:10}).borderRadius(5)
        Row(){
          Text("四川大学网络空间安全本科生综合素质评价").margin({left:10}).fontWeight(700).onClick(() => {
            router.pushUrl({url:""})
          })
        }.backgroundColor(Color.White).width('95%').height("10%").margin({top:2}).borderRadius(5)
        Row(){
          Text("附件1：德育发展性评价考核办法说明").margin({left:10}).fontWeight(700).onClick(() => {
            router.pushUrl({url:""})
          })
        }.backgroundColor(Color.White).width('95%').height("10%").margin({top:2}).borderRadius(5)
      }.backgroundColor("#f7f7f7").width("100%").height("100%")
    }
    .height('100%')
    .width('100%')
  }
}