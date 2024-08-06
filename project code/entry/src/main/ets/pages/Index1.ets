import TitleComponent from '../components/Titlecomponent'
import UserModel from '../models/UserModel';
import UserModel1 from '../models/UserModel1';
import { FocusController } from '@ohos.arkui.UIContext';
import router from '@ohos.router';


@Entry
@Component
struct Index {
  @State sendSMSText: string = '发送验证码';
  @State maxLength: number = 5
  @State userForm1:UserModel1={
    smsCode:"",
    n1:"",
    n2:"",
    n3:"",
    n4:"",
    n5:"",
    n6:"",
  }


  @StorageLink("user")
  user:UserModel = {}


  intervalId:number = 0;
  @State isSendIng:boolean = false;
  sendSMS(){
    let index = 60;
    this.intervalId = setInterval(()=>{
      if (index == 0){
        this.sendSMSText = '发送验证码'
        this.isSendIng = false
        clearInterval(this.intervalId)
      }else{
        this.sendSMSText = index + '秒后重发'
        index--
      }
    },1000)
  }




  build() {

    Column() {
      Row() {
        TitleComponent({title:""})
      }
      Row(){
        Text("输入短信验证码")
          .fontSize(25).fontWeight(700)

      }.margin({top:50})
      .offset({
        x:30
      })
      .width('100%')
      Row(){
        Column(){
          Text(`验证码已发送至${this.user.userPhone!}|`)
            .backgroundColor(Color.White).width('60%')
            .offset({
              x:20,
              y:20
            })
        }
        Column(){
          Text(this.sendSMSText).fontColor("#007DFE").onClick(()=>{
            if (!this.isSendIng){
              this.isSendIng = true;
              this.sendSMS()
            }
          })
            .offset({
              x:20,
              y:20
            })
        }



      }.width('100%').justifyContent(FlexAlign.Start)
      Row({ space: 5 }){
        Row(){
          TextInput({placeholder:"",text:this.userForm1.n1}) .maxLength(1).border({width:1}).width(50).height(50).onChange(value=>{
              if (value.length == 1){
                focusControl.requestFocus("num2")
                console.log("获取焦点")
              }
          })
        }
        Row(){
          TextInput({placeholder:"",text:this.userForm1.n2}) .maxLength(1).border({width:1}).width(50).height(50).key("num2").onChange(value=>{
            if (value.length == 1){
              focusControl.requestFocus("num3")
              console.log("获取焦点")
            }
          })
        }
        Row(){
          TextInput({placeholder:"",text:this.userForm1.n3}).maxLength(1) .border({width:1}).width(50).height(50).key("num3").onChange(value=>{
            if (value.length == 1){
              focusControl.requestFocus("num4")
              console.log("获取焦点")
            }
          })
        }
        Row(){
          TextInput({placeholder:"",text:this.userForm1.n4}).maxLength(1) .border({width:1}).width(50).height(50).key("num4").onChange(value=>{
            if (value.length == 1){
              focusControl.requestFocus("num5")
              console.log("获取焦点")
            }
          })
        }
        Row(){
          TextInput({placeholder:"",text:this.userForm1.n5}) .maxLength(1).border({width:1}).width(50).height(50).key("num5").onChange(value=>{
            if (value.length == 1){
              focusControl.requestFocus("num6")
              console.log("获取焦点")
            }
          })
        }
        Row() {
          TextInput({placeholder:"",text:this.userForm1.n6}).maxLength(1).border({ width: 1 }).width(50).height(50).key("num6").onChange(value=>{
              if(value.length == 1) {
                setTimeout(()=> {
                  router.pushUrl({url:"pages/Index"})
                },500)
              }
          })
        }

      }
      .offset({
        y:100
      })
      .padding(15)
      .width('100%')
    }
    .height('100%')
  }
}