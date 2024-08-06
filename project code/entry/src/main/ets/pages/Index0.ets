import router from '@ohos.router'
import userAuth from '@ohos.userIAM.userAuth'
import promptAction from '@ohos.promptAction'
import UserModel from '../models/UserModel'
import { departments } from '../api/API'
import ResponseData from '../models/ResponseData'
import DepartmentModel from '../models/DepartmenModelt'
import json from '@ohos.util.json'


AppStorage.SetOrCreate("user",{userphone: ""})
interface DepartmentResult{
  numb: number;
}


@Entry
@Component


struct Index {
  @State userForm:UserModel= {
    userPhone: ""
  }

  @State numb:number=0;
  @State num:number=0;
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


// 假设 this.departments 是一个 DepartmentModel[] 类型的数组
// 假设 this.user 是一个包含 userPhone 属性的对象

// 使用 find 方法来找到第一个匹配的部门
  // 假设 GeneratedTypeLiteralInterface_1 类似于 { numb: number }
  // 如果它更复杂，请替换为正确的类型
findDepartmentByUserPhoneResult() {
  const matchedDepartment = this.departments.find((item: DepartmentModel) => {
    return this.userForm.userPhone === item.phone;
  });
  console.log(JSON.stringify(this.departments));
  console.log(JSON.stringify(matchedDepartment));
  if (matchedDepartment) {
    this.numb = 1
  } else {
    this.numb = 0
  }
}

  build() {
    Column() {
      Row() {
        Image($r("app.media.1_badge")).width(50).margin({ top: 80, left: 30 })
      }.width('100%')

      Row() {
        Text("欢迎使用云上川大").fontSize(25).fontWeight(700).margin({ left: 40 })
      }.margin({ top: 30 }).width('100%')

      Row() {
        Stack({ alignContent: Alignment.Start }) {
          TextInput({ placeholder: "请输入你的手机号" ,text:this.userForm.userPhone})
            .onChange(value=>this.userForm.userPhone=value).maxLength(11)
            .fontSize(20)
            .fontWeight(700)
            .width('100%')
            .textAlign(TextAlign.Center)

          // 检查是否找到了匹配的部门

          Image($r("app.media.1_phone"))
            .width(30)
        }.margin({ top: 90 ,left:30,right:30}).backgroundColor(Color.White)
      }


      Button("下一步")
          .onClick(() => {
            console.log(this.numb + "");
            if (this.userForm.userPhone == "" ) {
               promptAction.showToast({
             message:"请输入你的手机号"
           })
              return
             }
               if(this.userForm.userPhone!.length != 11) {
                 promptAction.showToast({
                   message: "请输入正确的手机号"
                 })
                 return
               }
               if(this.num==0){
                 promptAction.showToast({
                   message:"请勾选下方协议"
                 })
                 return



               }
            this.findDepartmentByUserPhoneResult()

            if(this.num == 1 && this.numb==1){
              this.user.userPhone = this.userForm.userPhone;
              router.pushUrl({ url: "pages/Index1" })

            } else {
              promptAction.showToast({
                message:"未知用户"
              })
            }

          })
          .margin({ top: 50 })
          .width('82%')
          .shadow({ radius: 3, color: "#CE1D15", offsetX: 5, offsetY: 5 })
          .backgroundColor("#CE1D15")

      Row() {
        Row(){
          Radio({value:'Radio1',group:'RadioGroup'}).checked(false).onChange((isChecked:boolean)=>{
            if(isChecked){
             this.num=1;
            }
          })
          Text("同意").fontColor("#979696").fontSize(15)
          Text("隐私政策、用户协议").fontColor("#CB6558").fontSize(15)
      }.width('100%')
    }.alignItems(VerticalAlign.Top).margin({top:40,left:40})
}.height('100%')
  }
}