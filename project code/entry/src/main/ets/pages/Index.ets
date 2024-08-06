import { departments } from '../api/API';
import Home from '../components/Home';
import NewsPage from '../components/NewsPage';
import Notice from '../components/Notice';
import Setting from '../components/Setting';
import DepartmentModel from '../models/DepartmenModelt';
import ResponseData from '../models/ResponseData';
import UserModel from '../models/UserModel';


class TabModel{
  name?:string
  img?:Resource
  actimeImg?:Resource
}

@Entry
@Component
struct Index {
  @State message: string = 'Hello World';



  tabModels:TabModel[] = [
    {
        name:"首页",
        img:$r("app.media.2_bottom_badge"),
        actimeImg:$r("app.media.2_bottom_badge_red")
    },
    {
        name:"新闻",
        img:$r("app.media.2_bottom_new"),
        actimeImg:$r("app.media.2_bottom_new_red")
    },
    {
      name:"通知",
      img:$r("app.media.2_bottom_notify"),
      actimeImg:$r("app.media.2_bottom_notify_red")
    },
    {
      name:"设置",
      img:$r("app.media.2_bottom_setting"),
      actimeImg:$r("app.media.2_bottom_setting_red")
    }
  ]
  @State currentSelect:number = 0;
  @Builder
  tabBar(item:TabModel){
    Column(){
      Image(this.tabModels[this.currentSelect].name == item.name ? item.actimeImg : item.img)
        .width(24)
        .height(24)
      Text(item.name).fontColor(this.tabModels[this.currentSelect].name == item.name ? "#b6402c":"#2b2b2b")
        .fontSize(12)
    }
  }
  build() {
      Column(){
        Tabs({barPosition:BarPosition.End}){
          ForEach(this.tabModels,(item:TabModel,index) =>{
            TabContent(){
              if(item.name == "首页"){
                Home()
              }else if(item.name == "设置"){
                Setting()
              }else if(item.name == "新闻"){
                NewsPage()
              }else if(item.name == "通知"){
                Notice()
              }else{
                Text(item.name)
              }
            }.tabBar(this.tabBar(item))
          },
            (item:TabModel,index) => JSON.stringify(item)+index)
        }
        .onChange(value => this.currentSelect = value)
        .animationDuration(100)
        .scrollable(false)

      }


      .width('100%')
      .height('100%')
  }
}