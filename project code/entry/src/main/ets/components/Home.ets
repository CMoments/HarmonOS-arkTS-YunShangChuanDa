import router from '@ohos.router'
import { departments } from '../api/API'
import DepartmentModel from '../models/DepartmenModelt'
import ResponseData from '../models/ResponseData'
import UserModel from '../models/UserModel'
import UserModel3 from '../models/UserModel3'
import { url } from '@kit.ArkTS'

@Component

export default struct  Home {
  @State departments:DepartmentModel[]=[]
  @State selectOptions:SelectOption[]=[]
  @StorageLink("user")
  user:UserModel = {}



  aboutToAppear():void{
    this.getDepartments()
  }
  getDepartments(){
    departments().then(response=>{
      // 判断响应状态码是
      if (response.responseCode == 200){ // 请求成功
        // 服务器响应的数据 response.result 现在是string类型
        console.log("请求成功")
        let responseData:ResponseData<DepartmentModel[]> =
          JSON.parse(response.result as string) as ResponseData<DepartmentModel[]>
        // 判断业务响应是否正确
        if (responseData.code == 200){//数据获取成功
          console.log("数据获取成功")
          this.departments =responseData.data!
          this.selectOptions = responseData.data!.map(item=>{
            return {
              value:item.phone
            } as SelectOption
          })
          console.log("成功"+JSON.stringify(this.departments));
        }
      }
    }).catch((error:Error)=>{
      console.log("register:department:error",JSON.stringify(error));
    })
  }

  listbar:UserModel3[] = [
    {
      listname:"校园电话",
      img:$r("app.media.2_phone"),
      url:"pages/PhonePage"
    },
    {
      listname:"综合素质评价",
      img:$r("app.media.2_flower"),
      url:"pages/EvaluateIndexPage"
    },
    {
      listname:"预约与测评",
      img:$r("app.media.2_heart"),
      url:"pages/HealthIndexPage"
    },
    {
      listname:"我的课表",
      img:$r("app.media.2_book"),
      url:"pages/Index2"
    },
    {
      listname:"校历",
      img:$r("app.media.2_calender"),
      url:"pages/XiaoliPage"
    },
    {
      listname:"日程管理",
      img:$r("app.media.2_ri")
    },
    {
      listname:"在借图书",
      img:$r("app.media.2_agenda")
    },
    {
      listname:"学术看板",
      img:$r("app.media.2_xue")
    },
    {
      listname:"因公出国（境）",
      img:$r("app.media.2_work")
    },
    {
      listname:"图书查询",
      img:$r("app.media.2_book")
    }
  ]
  appbar1:UserModel3[] = [{
    listname:"OA办公",
    img:$r("app.media.2_icon_OAOffice"),
    url:"pages/OAbangongPage"
  },
  {
    listname:"图书馆",
    img:$r("app.media.2_icon_library"),
    url:"pages/TushuguanPage"
  },
  {
    listname:"心理服务",
    img:$r("app.media.2_icon_health"),
    url:"pages/XinlifuwuPage"
  },
  {
    listname:"科研",
    img:$r("app.media.2_icon_science"),
    url:"pages/KeyanPage"
  },
  ]
  appbar2:UserModel3[] = [{
    listname:"智慧学工",
    img:$r("app.media.2_icon_worker"),
    url:"pages/ZhihuixuegongPage"
  },
    {
      listname:"设备处",
      img:$r("app.media.2_icon_device"),
      url:"pages/ShebeichuPage"
    },
    {
      listname:"校园交通",
      img:$r("app.media.2_icon_transform"),
      url:"pages/XiaoyuanjiaotongPage"
    },
    {
      listname:"校园信息",
      img:$r("app.media.2_icon_information"),
      url:"pages/XiaoyuanxinxiPage"
    },
  ]
  appbar3:UserModel3[] = [{
    listname:"国际处",
    img:$r("app.media.2_icon_international"),
    url:"pages/GuojichuPage"
  },
    {
      listname:"全部应用",
      img:$r("app.media.2_icon_allapp"),
      url:"pages/Page_allapp"
    }
  ]

  private searchController:SearchController = new SearchController()
  @State changeValue:string = '';
  @State submitValue:string = '';
  build() {
    Column() {

      RelativeContainer() {
        Image($r("app.media.2_back"))
          .height('290')
          .width('100%')
        Row() {
          Search({placeholder: "川大百事通",})
            .height(40)
            .margin(20)
            .searchButton("搜索", { fontColor: "#b6402c" })
            .opacity(1)
            .backgroundColor(Color.White)
            .shadow({
              radius: 10,
              color: "#b6402c",
              offsetX: 2,
              offsetY: 2
            })
            .onSubmit(()=>{
              router.pushUrl({url:"pages/SearchPage"})
            })

            /*
            Search({ placeholder: '请输入搜索关键字' })
          .searchButton('搜索')
          .width('80%')
          .height(30)
          .backgroundColor('#f8f8f8')
          .placeholderColor(Color.Grey)
          .placeholderFont({ size: 14, weight: 400 })
          .textFont({ size: 14, weight: 400 })
          .margin(20);
             */
        }.width('100%')
        .alignRules({
          top: { anchor: "__container__", align: VerticalAlign.Bottom }
        })

        Row() {
          Image($r("app.media.4_portrait"))
            .width(65)
            .height(65)
            .alignRules({
              left: { anchor: "__container__", align: HorizontalAlign.Start }
            })
            .offset({
              x: 15
            })

          Column() {
            ForEach(this.departments,(item:DepartmentModel,index)=> {
              if (this.user.userPhone == item.phone) {

                Text(`下午好，${item.name}同学`)
                  .fontColor(Color.White)
                  .fontSize(15)
                  .fontStyle(FontStyle.Normal)
                  .fontWeight(FontWeight.Bold)
                  .margin(15)
                  .offset({
                    y: 20
                  })
              }
            })
              ForEach(this.departments,(item:DepartmentModel,index)=> {
                if (this.user.userPhone == item.phone) {
                  Text(item.id)
                    .fontColor("#f0f0f0")
                    .fontSize(15)
                    .offset({
                      y: 20
                    })
                }
              })
          }.width(180)
          .height('100%')

          Column() {
            Text("一卡通余额")
              .fontColor("#f0f0f0")
              .fontSize(12)
              .offset({
                y: 20
              })
            Image($r("app.media.2_top_eye"))
              .width(20)
              .height(20)
              .offset({
                y: 20
              })
            Text("￥ ****")
              .fontColor("#f0f0f0")
              .fontSize(15)
              .fontWeight(FontWeight.Bold)
              .offset({
                y: 6,
                x: 25
              })
            Column() {
              Text("未领取余额：****")
                .fontColor("#f0f0f0")
                .fontSize(12)
                .offset({
                  y: 16
                })

              Text("有效期：****")
                .fontColor("#f0f0f0")
                .fontSize(12)
                .offset({
                  y: 20
                })
            }.width('100%')
            .height(50)
            .justifyContent(FlexAlign.Start)
            .alignItems(HorizontalAlign.Start)

          }.height('100%')
          .width(120)
          .justifyContent(FlexAlign.Start)
          .alignItems(HorizontalAlign.Start)

          // .backgroundColor(Color.Black)
        }.width('100%')
        .height(120)
        .offset({
          x: 0,
          y: 0
        })

        List(){
          ForEach(this.listbar,(item:UserModel3,index)=>{
            ListItem(){
              Column(){
                Image(item.img)
                  .height(50)
                  .width(50)
                  .margin(8)

                Text(item.listname)
                  .fontColor(Color.White)
                  .fontSize(14)
              }.offset({
                x:10
              })
              .onClick(()=>{
                router.pushUrl({url:item.url})
              })
            }.width(60)
            .height(60)
            .margin(6)
          })
        }.width('100%')
        .height(140)
        .offset({
          x:0,
          y:130
        })
        .scrollBarWidth(3)
        .scrollBarColor(Color.White)
        .listDirection(Axis.Horizontal)
      }
      .height(250)
      .width('100%')

      Column() {
        Row() {
          ForEach(this.appbar1, (item: UserModel3, index) => {
            Column() {
              Image(item.img)
                .width(50)
                .height(50)
                .margin(3)
              Text(item.listname)
                .fontSize(15)
                .fontColor(Color.Black)
            }.onClick(()=>{
              router.pushUrl({url:item.url})
            })
          })
        } .width('100%')
        .height(70)
        .offset({
                y: 40
              })
        .justifyContent(FlexAlign.SpaceAround)
        Row() {
          ForEach(this.appbar2, (item: UserModel3, index) => {
            Column() {
              Image(item.img)
                .width(50)
                .height(50)
                .margin(3)
              Text(item.listname)
                .fontSize(15)
                .fontColor(Color.Black)
            }.onClick(()=>{
              router.pushUrl({url:item.url})
            })
          })

        }.width('100%')
        .height(70)
        .offset({
          y: 50
        })
        .justifyContent(FlexAlign.SpaceAround)

        Row() {
          ForEach(this.appbar3, (item: UserModel3, index) => {
            Column() {
              Image(item.img)
                .width(50)
                .height(50)
                .margin(3)
              Text(item.listname)
                .fontSize(15)
                .fontColor(Color.Black)
            }.onClick(()=>{
              router.pushUrl({url:item.url})
            })
            Blank()
          })

        } .width('50%')
        .height(70)
        .offset({
          y: 60,
          x:16
        })


      }.height('100%')
      .width('100%')
      .alignItems(HorizontalAlign.Start)
      .backgroundImage($r("app.media.1_badge_1"))
      .backgroundImageSize({width:320,height:320})
      .backgroundImagePosition({x:15,y:60})
      .offset({
        y:50
      })
      .justifyContent(FlexAlign.Start)
    }
    .width('100%')
    .height('100%')
  }
}