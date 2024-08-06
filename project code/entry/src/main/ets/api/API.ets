
import http from '@ohos.net.http'
import { get } from '../utils/HttpUtil';

//请求获取组织数据
export const departments = ():Promise<http.HttpResponse> => get ("/index.php");