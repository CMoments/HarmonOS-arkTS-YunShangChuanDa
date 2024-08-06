import http from '@ohos.net.http';
import { URL } from '../constants/APIConstants';
export async function request (url:string,method:http.RequestMethod =
http.RequestMethod.GET,params?:object,header?:object):Promise<http.HttpResponse>
{
  // 请求服务器的时候需要先创建一个http的请求对象 每一次请求都应该创建一个新的请求对象
  const httpClient = http.createHttp();
  // 准备请求数据
  if (url.indexOf(URL) == -1 ){
    url = URL + url;
  }
  // 参数 如果get请求，我们需要手动将参数拼接到url上
  if (method == http.RequestMethod.GET && params){
    if (Object.keys(params).length){
      url += '?'+ Object.keys(params).map(key => {
        if (params[key]){
          return key + '=' + params[key]
        } else
          return ""
      }).join('&')
    }
  }
  //如果是post请求，我们需要将参数都设置为json提交
  if (method == http.RequestMethod.POST){
    if (!header){
      header = new Object()
    }
    header['Content-Type'] = "application/json;charset=utf-8"
  }
  // 请求服务器并且获取响应
  const response:http.HttpResponse = await httpClient.request(url,
    {
      method:method,
      extraData:params,
      header:header
    }
  )
  return response;
}
export function get
(url:string,params?:object,header?:object):Promise<http.HttpResponse>{
  return request(url,http.RequestMethod.GET,params,header)
}
export function post
(url:string,params?:object,header?:object):Promise<http.HttpResponse>{
  return request(url,http.RequestMethod.POST,params,header)
}