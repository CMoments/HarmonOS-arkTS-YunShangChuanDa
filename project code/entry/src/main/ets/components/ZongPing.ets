import router from '@ohos.router'
import UserModel14 from '../models/UserModel14'

@Component
export default struct  ZongPing {
  @State message: string = 'Hello World'

  lister:UserModel14[]=[
    {
      listname:"我的个人信息",
      img:$r("app.media.m_gerenxinxi"),
    },
    {
      listname:"通知签到/签退",
      img:$r("app.media.m_tongzhiqiandao"),
    },
    {
    listname:"晚点名签到",
    img:$r("app.media.m_wandianming"),
    },
    {
      listname:"奖励性评价",
      img:$r("app.media.m_jiangli"),
    },
    {
      listname:"我的学业指导",
      img:$r("app.media.m_wode"),
    },
    {
      listname:"生涯成长档案",
      img:$r("app.media.m_shengya"),
    },
    {
      listname:"补充记录申请",
      img:$r("app.media.m_buchong"),
    },
    {
      listname:"我的生涯规划",
      img:$r("app.media.m_wodeshengya"),
    },


  ]

  build() {
    Column() {
      Stack({ alignContent: Alignment.Start }) {
        Text("综合素质评价")
          .fontSize(17)
          .fontWeight(600)
          .width('100%')
          .margin({ top: 20})
          .textAlign(TextAlign.Center)
        Image($r('app.media.back'))
          .width(30)
          .margin({ top: 20,left: 10})
          .onClick(() => {
            router.back()
          })
        Text("关闭").margin({ top: 20, left: 40 }).fontSize(17).fontWeight(600).onClick(() => {
          router.back()
        })
      }.width("100%")
      Scroll() {
        Column() {
          Image($r('app.media.pp')).width('100%')
          List() {
            ForEach(this.lister, (item: UserModel14, index) => {
              ListItem() {
                Column() {
                  Image(item.img)
                    .height('60%')
                  Text(item.listname)
                    .fontSize(12).fontWeight(700)
                }
              }.width(80)
              .height(60)
              .margin(10)
            })
          }
          .width('95%')
          .height(80)
          .offset({
            x: 0,
            y: -55
          })
          .backgroundColor(Color.White)
          .listDirection(Axis.Horizontal)
          .opacity(1).borderRadius(15)


          Image($r('app.media.ppp')).width('100%').margin({bottom:20})
            .offset({
            x: 0,
            y: -55
          })
        }

      }.width('100%').height('100%')

    }
  }
}