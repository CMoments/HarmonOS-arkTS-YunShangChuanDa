import router from '@ohos.router'

@Component
@Preview
export default struct EvaluateApply{
  @State message: string = 'Hello World'

  build() {
    Column() {
      Stack({alignContent:Alignment.Start}){
        Text("评价申请")
          .fontSize(20)
          .fontWeight(400)
          .width('100%')
          .margin({top:20,left:10})
          .textAlign(TextAlign.Center)
        Image($r('app.media.back'))
          .width(20)
          .margin({top:20,left:10})
          .onClick(() => {
            router.back()
          })
        Text("关闭").margin({top:20,left:30}).fontSize(20).fontWeight(400).onClick(() => {
          router.back()
        })
      }.width("100%")
      Image($r('app.media.giftbox')).width('100%')
      Column(){
      Column(){
        Row(){
          Text("评价方案附件信息").fontWeight(700).margin({left:20})
          Button(){
            Text("立即查看").fontColor(Color.White).fontSize(10).onClick(()=>{
              router.pushUrl({url:"pages/AddingMessagePage"})
            })
          }.backgroundColor("#ab3623").height(25).width('20%').margin(50)
      }.backgroundColor(Color.White).width('85%').height(60).margin({top:25 })

        .borderRadius(20)
        Row(){
          Text("综合评价申请").fontWeight(700).margin({left:20})
          Button(){
            Text("立即申请").fontColor(Color.White).fontSize(10)
          }.backgroundColor("#ab3623").height(25).width('20%').margin({ left:83 })
          .onClick(()=>{
            router.pushUrl({url:""})
          })
        }.backgroundColor(Color.White).width('85%').height(60).margin({top:15 })
        .borderRadius(20)
      }.backgroundColor('#fae5e0').width('90%').height('70%').borderRadius(20)
}.backgroundColor("#d16354").width('100%')
    }
    .width('100%').height('100%')
  }
}