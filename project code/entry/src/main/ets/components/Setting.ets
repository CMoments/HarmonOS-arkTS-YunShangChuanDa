
import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
import UserModel from '../models/UserModel'
import DepartmentModel from '../models/DepartmenModelt'
import { departments } from '../api/API'
import ResponseData from '../models/ResponseData'

@Component
@Preview
export default  struct  Setting {
  @State message: string = 'Hello World'
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




  build() {

    Column(){
      Row(){
        Text("设置").fontSize(25).fontWeight(700).margin({top:20,right:240})
      }.justifyContent(FlexAlign.Start)
      Row() {
        Row() {
          Image($r('app.media.4_portrait'))
            .width(55).margin({right:3})
          Column() {
            ForEach(this.departments,(item:DepartmentModel,index)=>{
              if(this.user.userPhone == item.phone){
                Text(item.name).fontWeight(600).fontSize(25)
               }
            })
            Text("四川大学").fontColor("#D8DCDF").margin({top:7}).fontSize(15)
          }.alignItems(HorizontalAlign.Start)
          .margin({ left: 10 })
        }

        Image($r('app.media.back_icon'))
          .width(20).margin({left:170}).onClick(()=>{
          router.pushUrl({url:""})
        })
      }.onClick(()=>{
        router.pushUrl({url:"pages/GeRenZiLiao"})
      })
      .width('90%')
      .height(50)
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 40 })

      Row() {
        Row() {
          Image($r('app.media.4_chatting'))
            .width(20).margin({right:3})
          Column() {
            Text("意见反馈").fontWeight(500).fontSize(15)
          }.alignItems(HorizontalAlign.Start)
          .margin({ left: 10 })
        }.margin({ left: 10 })
        Image($r('app.media.back_icon'))
          .width(20).margin({left:210})
      }.border({width:{bottom:1},color:"#F3F3F3"})
      .width('90%')
      .height(50)
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 40 }).onClick(()=>{
        router.pushUrl({url:"pages/IdeaPage"})
      })
      Row() {
        Row() {
          Image($r('app.media.4_gift'))
            .width(20).margin({right:3})
          Column() {
            Text("推荐给好友").fontWeight(500).fontSize(15)
          }.alignItems(HorizontalAlign.Start)
          .margin({ left: 10 })
        }.margin({ left: 10 })

        Image($r('app.media.back_icon'))
          .width(20).margin({left:195})
      }.border({width:{bottom:1},color:"#F3F3F3"})
      .width('90%')
      .height(50)
      .justifyContent(FlexAlign.SpaceBetween).onClick(()=>{
        promptAction.showDialog({
          title: '                分享到',

          buttons: [
            {

              text: '微信',
              color: '#000000',
            },
            {

              text: '朋友圈',
              color: '#000000',

            }
          ],
        })
      })
      Row() {
        Row() {
          Image($r('app.media.4_assignment'))
            .width(20).margin({right:3})
          Column() {
            Text("检查更新").fontWeight(500).fontSize(15)
          }.alignItems(HorizontalAlign.Start)
          .margin({ left: 10 })
        }.margin({ left: 10 })

        Image($r('app.media.back_icon'))
          .width(20).margin({left:210})
      }.border({width:{bottom:1},color:"#F3F3F3"})
      .width('90%')
      .height(50)
      .justifyContent(FlexAlign.SpaceBetween).onClick(()=>{
        promptAction.showToast({
          message: '当前已是最新版本',
          duration: 2000,
          bottom:500
        });
      })
      Row() {
        Row() {
          Image($r('app.media.4_setting'))
            .width(20).margin({right:3})
          Column() {
            Text("账户设置").fontWeight(500).fontSize(15)
          }.alignItems(HorizontalAlign.Start).onClick(()=>{
            router.pushUrl({url:""})
          })
          .margin({ left: 10 })
        }.margin({ left: 10 })

        Image($r('app.media.back_icon'))
          .width(20).margin({left:210})
      }.border({width:{bottom:1},color:"#F3F3F3"})
      .onClick(()=>{
        router.pushUrl({url:'pages/AccountSettingPage'})
      })
      .width('90%')
      .height(50)
      .justifyContent(FlexAlign.SpaceBetween)
    }.height('100%')
    .width('100%')


  }
}