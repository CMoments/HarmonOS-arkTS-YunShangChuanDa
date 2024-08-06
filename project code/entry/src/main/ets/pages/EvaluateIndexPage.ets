import EvaluateApply from '../components/EvaluateApply'
import Report from '../components/PingJiaReport'
import ZongPing from '../components/ZongPing'

class TabModel {
  name?:string
  img?:Resource
  activeImg?:Resource
}
@Entry
@Component

struct HealthIndexPage {
  tabModels:TabModel[] = [
    {
      name:"评价档案",
      img: $r("app.media.pgA2"),
      activeImg: $r("app.media.pgA1")
    },
    {
      name:"评价申请",
      img: $r("app.media.pgB2"),
      activeImg: $r("app.media.pgB1")
    },
    {
      name:"评价报告",
      img: $r("app.media.pgC2"),
      activeImg: $r("app.media.pgC1")
    },

  ]
  @State currentSelect:number =0;//当前选中的tab是第几个
  @Builder
  tabBar(item:TabModel){
    Column(){
      Image(this.tabModels[this.currentSelect].name == item.name ? item.activeImg : item.img)
        .width(24)
        .height(24)
      Text(item.name).fontColor(this.tabModels[this.currentSelect].name == item.name ? "#d81d0b" :"#A2A2A2")
        .fontSize(12)
    }
  }
  build() {
    Column() {
      Tabs({ barPosition: BarPosition.End, index: this.currentSelect }) {
        ForEach(this.tabModels, (item: TabModel, index) => {
          TabContent() {
            if (item.name == "评价档案") {
              ZongPing()
            } else if (item.name == "评价申请") {
              EvaluateApply()
            }
            else if (item.name == "评价报告") {
              Report()
            }
            else {
              Text(item.name)
            }
          }.tabBar(this.tabBar(item))
        },
          (item: TabModel, index) => JSON.stringify(item) + index)
      }.height('100%')

      .onChange(value => this.currentSelect = value)
      .animationDuration(100)

    }
    .width('100%').height('100%').justifyContent(FlexAlign.Start)
  }
}