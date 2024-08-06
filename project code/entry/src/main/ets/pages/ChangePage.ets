import router from '@ohos.router'
import App from '@system.app'
@Entry
@Component
struct ChangePage {
  @State message: string = 'Hello World'

  build() {
      Column() {
        Stack({alignContent:Alignment.Start}){
          Text("切换账号")
            .fontSize(25)
            .fontWeight(500)
            .width('100%')
            .margin({top:20})
            .textAlign(TextAlign.Center)
          Image($r('app.media.back'))
            .width(30)
            .margin({top:20,left:20})
            .onClick(() => {
              router.back()
            })
        }.width("100%")
        .height(50)
        Row(){
          Image($r('app.media.4_portrait'))
            .width(40).margin(10)
          Column() {
            Text("董海玄").margin({right:100})
            Text("121212121").margin({right:70,top:5})
          }.margin(15)
          Image($r('app.media.gou'))
            .width(40).margin({left:35,bottom:60})
        }.backgroundColor(Color.White)
        .width('85%')
        .height('10%')

        .borderRadius(10)
        .margin({top:20})
        Row(){
          Image($r('app.media.jiahao'))
            .width(40).margin(10)
          Column() {
            Text("添加账号").margin({right:100})
          }.margin(15)
        }.backgroundColor(Color.White)
        .width('85%')
        .height('10%')
        .onClick(()=>{
          router.pushUrl({url:"pages/Index0"})
        })
        .borderRadius(10)
        .margin({top:20})

      }.backgroundColor("#f5f6f6")
      .width('100%')
      .height('100%')
  }
}