import NewsComponent1 from './NewsComponent1';
import NewsComponent2 from './NewsComponent2';
import NewsComponent3 from './NewsComponent3';
import NewsComponent4 from './NewsComponent4';

class TabModel {
  name?: string;
}
@Component
export default struct  NewsPage {

  tabModels: TabModel[] = [{
      name: "焦点新闻"
    }, {
      name: "综合新闻"
    }, {
      name: "基层动态"
    }, {
      name: "公告"
    }]

  @State currentSelect: number = 0; // 当前选中的tab是第几个
  @Builder


  tabBar(item: TabModel) {
    Column() {
      Row() {
        Text(item.name)
          .fontColor(this.tabModels[this.currentSelect].name == item.name ? '#ff4e4949' : Color.Grey)
          .fontSize(20)
          .fontWeight(700)
          .textAlign(TextAlign.Center)
          /*.decoration(this.tabModels[this.currentSelect].name == item.name ?
            {
              type: TextDecorationType.Underline,
              color: Color.Red
            } : {
              type: TextDecorationType.None,
              color: Color.Red
            })*/
          .width('100%')
      }
      .justifyContent(FlexAlign.SpaceAround)
    }
  }

  build() {
    Column() {
      // 包装 Column 作为唯一的根节点
      Column() {
        Search({ placeholder: '请输入搜索关键字' })
          .searchButton('搜索')
          .width('80%')
          .height(30)
          .backgroundColor('#f8f8f8')
          .placeholderColor(Color.Grey)
          .placeholderFont({ size: 14, weight: 400 })
          .textFont({ size: 14, weight: 400 })
          .margin(20);
      }
      .width('100%')
      .backgroundColor('#f13a3a');

      Tabs({ barPosition: BarPosition.Start }) {
        ForEach(this.tabModels, (item: TabModel, index) => {
          TabContent() {
            if (item.name == "焦点新闻") {
              NewsComponent1()
            }else if (item.name == "综合新闻"){
              NewsComponent2();
            }else if (item.name == "基层动态"){
              NewsComponent3();
            }else{
              NewsComponent4();
            }
          }.tabBar(this.tabBar(item));
        }, (item: TabModel, index) => JSON.stringify(item) + index);
      }
      .onChange(value => this.currentSelect = value)
      .animationDuration(100);
    }
  }
}
