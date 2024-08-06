import router from '@ohos.router'
import HealthHome from '../components/HealthHome';
import HealthMine from '../components/HealthMine';
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
      name:"首页",
      img: $r("app.media.home2"),
      activeImg: $r("app.media.home1")
    },
    {
      name:"我的",
      img: $r("app.media.mine2"),
      activeImg: $r("app.media.mine1")
    },

  ]
  @State currentSelect:number =0;//当前选中的tab是第几个
  @Builder
  tabBar(item:TabModel){
    Column(){
      Image(this.tabModels[this.currentSelect].name == item.name ? item.activeImg : item.img)
        .width(24)
        .height(24)
      Text(item.name).fontColor(this.tabModels[this.currentSelect].name == item.name ? "#027CFF" :"#A2A2A2")
        .fontSize(12)
    }
  }
  build() {
      Column() {
          Tabs({ barPosition: BarPosition.End, index: this.currentSelect }) {
            ForEach(this.tabModels, (item: TabModel, index) => {
              TabContent() {
                if (item.name == "首页") {
                  HealthHome()
                } else if (item.name == "我的") {
                  HealthMine()
                }
                else {
                  Text(item.name)
                }
              }.tabBar(this.tabBar(item))
            },
              (item: TabModel, index) => JSON.stringify(item) + index)
          }

          .onChange(value => this.currentSelect = value)
          .animationDuration(100)

      }
      .width('100%').height('100%')
  }
}