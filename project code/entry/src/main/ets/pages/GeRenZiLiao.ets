import router from '@ohos.router'
import promptAction from '@ohos.promptAction'
import UserModel from '../models/UserModel'
import DepartmentModel from '../models/DepartmenModelt'
import { departments } from '../api/API'
import ResponseData from '../models/ResponseData'

@Entry
@Component
struct Index {
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
    Row() {
      Column() {
        Row(){
            Button(){
              Image($r('app.media.back')).width(30)
            }.margin({top:70,right:80}).width(30).backgroundColor('#F2F2F2')
            .onClick(()=>{
              router.back()
            })
            Text('个人资料').fontSize(23).margin({top:70,right:170})
        }.height(100).backgroundColor('#F2F2F2').width('100%').justifyContent(FlexAlign.Center)

        Row(){
          Text('头像').fontSize(18)
          Image($r('app.media.4_portrait')).width(40).margin({left:220})
          Button(){
             Image($r('app.media.back_icon')).width(30)
          }.width(20).backgroundColor(Color.White)
          .onClick(()=>{
            router.pushUrl({url:""})
            promptAction.showActionMenu({
              buttons: [
                {
                  text: '拍照',
                  color: '#666666',
                },
                {
                  text: '相册',
                  color: '#000000',
                },
              ]
            })
              .then(data => {
                console.info('showActionMenu success, click button: ' + data.index);
              })
              .catch((err:Error) => {
                console.info('showActionMenu error: ' + err);
              })
          })

        }.height(50).backgroundColor(Color.White).width('100%').justifyContent(FlexAlign.Start)
        .border({width:{bottom:1},color:"#F3F3F3"})

        Row(){
          Text('姓名').fontSize(18)
          ForEach(this.departments,(item:DepartmentModel,index)=>{
            if(this.user.userPhone == item.phone){
              Text(item.name).width('100%').fontSize(18).margin({right:10})
                .offset({
                  x:225
                })
       }
          })
        }.height(50).backgroundColor(Color.White).width('100%').justifyContent(FlexAlign.SpaceBetween)
        .border({width:{bottom:1},color:"#F3F3F3"})

        Row(){
          Text('手机号').fontSize(18)
          ForEach(this.departments,(item:DepartmentModel,index)=>{
            if(this.user.userPhone == item.phone){
              Text(item.phone).width('100%').fontSize(18).margin({right:10})
                .offset({
                  x:150
                })
            }
          })

        }.height(50).backgroundColor(Color.White).width('100%').justifyContent(FlexAlign.SpaceBetween)
        .border({width:{bottom:1},color:"#F3F3F3"})

        Row(){
          Text('学号').fontSize(18)
          ForEach(this.departments,(item:DepartmentModel,index)=>{
            if(this.user.userPhone == item.phone){
              Text(item.id).width('100%').fontSize(18).margin({right:10})
                .offset({
                  x:150
                })
            }
          })
        }.height(50).backgroundColor(Color.White).width('100%').justifyContent(FlexAlign.SpaceBetween)
        .border({width:{bottom:1},color:"#F3F3F3"})

      }.width('90%').backgroundColor('#F2F2F2')
      .height('100%')
    }.width('100%').height('100%').justifyContent(FlexAlign.SpaceAround).backgroundColor('#F2F2F2')
  }
}