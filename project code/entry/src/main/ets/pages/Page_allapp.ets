import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Scroll(){
      Column(){
        Row(){
          Button(){
            Image($r('app.media.back')).width(20)
          }.margin({right:90}).width(30).backgroundColor(Color.White)
          .onClick(()=>{
            router.back()
          })

          Text("全部应用").fontSize(17).margin({right:130}).fontWeight(700)
        }.justifyContent(FlexAlign.Start).margin({top:20})
        Row(){
          Text('OA办公').fontWeight(700).fontSize(17).margin({top:15,left:10})
        }.justifyContent(FlexAlign.Start).width('100%')

        Row(){
          Column(){
            Image($r("app.media.p1")).width(40)
            Text('待办事务').fontWeight(600).fontSize(13)
          }.width('25%')
          .onClick(()=>{
            router.pushUrl({
              url: 'pages/DaibanPage9'
            })
          })
          Column(){
            Image($r("app.media.p2")).width(40)
            Text('工作沟通').fontWeight(600).fontSize(13)
          }.width('25%')
          Column(){
            Image($r("app.media.p3")).width(40)
            Text('法人证书申请').fontWeight(600).fontSize(13)
            Text('（学生）').fontWeight(600).fontSize(13)
          }.margin({top:15}).width('25%')
          Column(){
            Image($r("app.media.p4")).width(40)
            Text('流程新建/查').fontWeight(600).fontSize(13)
            Text('询').fontWeight(600).fontSize(13)
          }.margin({top:15}).width('25%')
        }.width('100%').margin({top:15})

        Row(){
          Column(){
            Image($r("app.media.p5")).width(40)
            Text('活动中心场地').fontWeight(600).fontSize(13)
            Text('申请').fontWeight(600).fontSize(13)
          }.margin({top:15}).width('25%')
          Column(){
          Image($r("app.media.p6")).width(40)
          Text('日程管理').fontWeight(600).fontSize(13)
        }.width('25%')


        }.justifyContent(FlexAlign.Start).width('100%').margin({top:15})

        Row(){
          Text('图书馆').fontWeight(700).fontSize(17).margin({top:50,left:10})
        }.justifyContent(FlexAlign.Start).width('100%')

        Row(){
          Column(){
            Image($r("app.media.p7")).width(40)
            Text('图书检索预约').fontWeight(600).fontSize(13)
          }.width('25%')
          Column(){
            Image($r("app.media.p8")).width(40)
            Text('在借图书').fontWeight(600).fontSize(13)
          }.width('25%')
          Column(){
            Image($r("app.media.p9")).width(40)
            Text('在约图书').fontWeight(600).fontSize(13)
          }.width('25%')
          Column(){
            Image($r("app.media.p10")).width(40)
            Text('借书历史').fontWeight(600).fontSize(13)
          }.width('25%')
        }.width('100%').margin({top:30})

        Row(){
          Text('心理服务').fontWeight(700).fontSize(17).margin({top:60,left:10})
        }.justifyContent(FlexAlign.Start).width('100%')

        Row(){
          Column(){
            Image($r("app.media.p11")).width(40)
            Text('预测与测评').fontWeight(600).fontSize(13)
          }.width('25%')

        }.justifyContent(FlexAlign.Start).width('100%').margin({top:20})


        Row(){
          Text('科研').fontWeight(700).fontSize(17).margin({top:60,left:10})
        }.justifyContent(FlexAlign.Start).width('100%')

        Row(){
          Column(){
            Image($r("app.media.p12")).width(40)
            Text('学术看板').fontWeight(600).fontSize(13)
          }.width('25%')

        }.justifyContent(FlexAlign.Start).width('100%').margin({top:20})

        Row(){
          Text('设备处').fontWeight(700).fontSize(17).margin({top:60,left:10})
        }.justifyContent(FlexAlign.Start).width('100%')

        Row(){
          Column(){
            Image($r("app.media.p13")).width(40)
            Text('物资管理平台').fontWeight(600).fontSize(13)
          }.width('25%')

        }.justifyContent(FlexAlign.Start).width('100%').margin({top:20})

        Row(){
          Text('校园交通').fontWeight(700).fontSize(17).margin({top:60,left:10})
        }.justifyContent(FlexAlign.Start).width('100%')

        Row(){
          Column(){
            Image($r("app.media.p14")).width(40)
            Text('校车时刻表').fontWeight(600).fontSize(13)
          }.width('25%')

        }.justifyContent(FlexAlign.Start).width('100%').margin({top:20})

        Row(){
          Text('校园信息').fontWeight(700).fontSize(17).margin({top:50,left:10})
        }.justifyContent(FlexAlign.Start).width('100%')

        Row(){
          Column(){
            Image($r("app.media.p15")).width(40)
            Text('校历').fontWeight(600).fontSize(13)
          }.width('25%')
          Column(){
            Image($r("app.media.p16")).width(40)
            Text('校园电话').fontWeight(600).fontSize(13)
          }.width('25%')
          Column(){
            Image($r("app.media.p17")).width(40)
            Text('我的课表').fontWeight(600).fontSize(13)
          }.width('25%')

        }.width('100%').margin({top:30})

        Row(){
          Text('国际处').fontWeight(700).fontSize(17).margin({top:60,left:10})
        }.justifyContent(FlexAlign.Start).width('100%')

        Row(){
          Column(){
            Image($r("app.media.p18")).width(40)
            Text('因公出国').fontWeight(600).fontSize(13)
            Text('（境）申...').fontWeight(600).fontSize(13)
          }.width('25%')

        }.justifyContent(FlexAlign.Start).width('100%').margin({top:20})


      }.width('90%')

    }.width('100%').height('100%').margin({bottom:50})
  }
}