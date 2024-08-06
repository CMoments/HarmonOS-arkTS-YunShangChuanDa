import router from '@ohos.router'
@Entry
@Component
struct EnterPage {


  aboutToAppear(){
    setTimeout(()=> {
      router.pushUrl({url:"pages/Index0"})
    },3000)
  }

  build() {

      Column() {
        Swiper() {
          Image($r("app.media.Enterpage_1")).height("84%")
          Image($r("app.media.Enterpage_2")).height("84%")

        }.autoPlay(true).interval(2000)
        Column(){
       Row() {
         Image($r("app.media.Enterpage_3")).width(50)
         Image($r("app.media.Enterpage_4")).width(100)
       }
        }.justifyContent(FlexAlign.Center).layoutWeight(1)

      } .width('100%')
    .height('100%')



  }

}