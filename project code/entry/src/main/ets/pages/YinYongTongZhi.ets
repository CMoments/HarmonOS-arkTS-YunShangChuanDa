import router from '@ohos.router'
import UserModel2 from '../models/UserModel2'
import YinYongModel from '../models/UserModel2'
@Entry
@Component
struct JiaoYiTongZhi {
  @State TongZhi: UserModel2[] =[
    { id:1,
      title:"[班级]团日活动--叶韵...",
      time:"2024-06-12 14:45:52",
      content:"[班级]团日活动--叶韵艾香即将开启,敬请关注!报名时间2024-06-12 00:00:00至2024-06-16 00:00:00，欢迎同学们踊跃报..."
    },

    { id:2,
      title:"[班级]团日活动--叶韵...",
      time:"2024-06-12 14:45:52",
      content:"[班级]团日活动--叶韵艾香即将开启,敬请关注!报名时间2024-06-12 12:19:00至2024-06-16 16:00:00，欢迎同学们踊跃报..."
    },

    { id:3,
      title:"[班级]团日活动--叶韵...",
      time:"2024-06-12 14:45:52",
      content:"[班级]团日活动--叶韵艾香即将开启,敬请关注!报名时间2024-06-12 00:00:00至2024-06-16 00:00:00，欢迎同学们踊跃报..."
    },

    { id:4,
      title:"[院级]网络空间安全学...",
      time:"2024-06-12 14:45:52",
      content:"[院级]网络空间安全学院健身操活动即将开启，敬请关注!报名时间2024-05-21 15:51:00至2024-05-26 19:00:00，欢迎同..."
    },

  ]


  build() {
    Column() {
      Row(){
        Image($r('app.media.back'))
          .width(30)
          .height(30)
      }.justifyContent(FlexAlign.Start)
      .width('90%')
      .margin({top:30})
      .onClick(()=>{
        router.back()
      })

      Row(){
        Text("应用通知")
          .fontSize(26)
          .fontWeight(600)
      }.width('90%')
      .margin({top:40})

        List() {
          ForEach(this.TongZhi, (item: UserModel2, index) => {
            ListItem() {
              Column() {
                Row(){
                Image($r('app.media.5_message'))
                  .width(30)
                  .height(20)
                  .margin({left:18})

                Text(item.title)
                  .fontSize(15)

                Text(item.time)
                  .fontColor("#9C9C9C")
                  .fontSize(13)
                  .width('90%')
                }

                Text(item.content)
                  .margin(20)
                  .fontSize(18)
                .fontWeight(400)

                Row() {
                  Text("查看详情")
                    .fontColor("#6D6D6D")
                    .fontSize(15)
                  Image($r('app.media.back_icon'))
                    .width(30)
                }.justifyContent(FlexAlign.SpaceBetween)
                .width('90%')
              }
            }.margin({top:20})
            .backgroundColor(Color.White)
          }, (item: UserModel2, index: number) => JSON.stringify(item) + index)
        }
    }.backgroundColor("#F9F9F9")
    .width('100%')
    .height('100%')
  }
}
