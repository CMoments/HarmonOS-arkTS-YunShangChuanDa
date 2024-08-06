import router from '@ohos.router';
import Daishen from '../components/Daishen';
import Daiyue from '../components/Daiyue';
import TitleComponent from '../components/Titlecomponent';
import Yiban from '../components/Yiban';

class TabModel{
  name?:string
}
@Entry
@Component

struct DaibanPage {


  tabsModels:TabModel[]=[
    { name:"待审",
    },{
    name:"待阅",
  },{
    name:"已办",
  },
  ]
  @State currentSelect:number=0;//当前选中的tab为第几个
  @Builder
  tabBar(item:TabModel){
    Column(){
      Text(item.name).fontColor((this.tabsModels[this.currentSelect].name==item.name?"#32303B":"#A2A2A2"))
        .fontSize(20)
    }
  }

  build() {
      Column() {
        Row() {
          TitleComponent({ title: "待办事宜" })
        }.width('100%')

       Row() {
         Tabs({ barPosition: BarPosition.Start, index: this.currentSelect }) {
           ForEach(this.tabsModels, (item: TabModel, index) => {
             TabContent() {
               if (item.name == "待审") {
                    Daishen()
               } else if (item.name == "待阅") {
                 Daiyue()
               } else
                 Yiban()
             }.tabBar(this.tabBar(item))
           },
             (item: TabModel, index) => JSON.stringify(item) + index)
         }.onChange(value => this.currentSelect = value).animationDuration(100)
       }.layoutWeight(1)

      }.width('100%')
    .height('100%')
  }
}