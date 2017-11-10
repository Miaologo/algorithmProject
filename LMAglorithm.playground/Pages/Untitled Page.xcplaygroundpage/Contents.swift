//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var urlString: String = "http://www.maoyan.com?redirectURL=http://xxx?a=1&b=1"
var encodeHost = urlString.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
var encodeFrag = urlString.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed)
var encodePath = urlString.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)
var encodeEquery = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
let logStr = "moviepro://www.meituan.com/login?redirectURL=http%3A%2F%2Fpf.fe.st.maoyan.com%2Factivity%2Fguess%2Frecords%3Fuuid%3D00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD%26utm_term%3D3.2.1%26utm_source%3DAppStore%26utm_content%3D00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD%26version_name%3D3.2.1%26utm_medium%3Diphone%26utm_campaign%3DAmovieproBgroupH0%26__reqTraceID%3D5BE85365-09D4-406C-918B-46FFA961D461%26regionid%3D%26f%3Dios%26cityId%3D1%26ci%3D1%26msid%3D5C982F63-3F73-4866-98D1-F3DFE91136222017-01-12-16-44352&f=ios&cityId=1"
let reStr = "http://pf.fe.st.maoyan.com/activity/guess/records?uuid=00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD&utm_term=3.2.1&utm_source=AppStore&utm_content=00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD&version_name=3.2.1&utm_medium=iphone&utm_campaign=AmovieproBgroupH0&__reqTraceID=5BE85365-09D4-406C-918B-46FFA961D461&regionid=&f=ios&cityId=1&ci=1&msid=5C982F63-3F73-4866-98D1-F3DFE91136222017-01-12-16-44352&f=ios&cityId=1"
var encodeRe = reStr.addingPercentEncoding(withAllowedCharacters: .urlUserAllowed)
//var reUrl = CFURLCreateStringByReplacingPercentEscapes(kCFAllocatorDefault, (CFStringRef)reStr, <#T##charactersToLeaveEscaped: CFString!##CFString!#>)
var a = "redirectURL=http://pf.fe.st.maoyan.com/activity/guess/records?uuid=00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD&utm_term=3.2.1&utm_source=AppStore&utm_content=00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD&version_name=3.2.1&utm_medium=iphone&utm_campaign=AmovieproBgroupH0&__reqTraceID=5BE85365-09D4-406C-918B-46FFA961D461&regionid=&f=ios&cityId=1&ci=1&msid=5C982F63-3F73-4866-98D1-F3DFE91136222017-01-12-16-44352"
var c = "redirectURL=http%3A%2F%2Fpf.fe.st.maoyan.com%2Factivity%2Fguess%2Frecords%3Fuuid%3D00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD%26utm_term%3D3.2.1%26utm_source%3DAppStore%26utm_content%3D00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD%26version_name%3D3.2.1%26utm_medium%3Diphone%26utm_campaign%3DAmovieproBgroupH0%26__reqTraceID%3D5BE85365-09D4-406C-918B-46FFA961D461%26regionid%3D%26f%3Dios%26cityId%3D1%26ci%3D1%26msid%3D5C982F63-3F73-4866-98D1-F3DFE91136222017-01-12-16-44352"
var b = "redirectURL=http%3A%2F%2Fpf.fe.st.maoyan.com%2Factivity%2Fguess%2Frecords%3Fuuid%3D00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD%26utm_term%3D3.2.1%26utm_source%3DAppStore%26utm_content%3D00EE6960F3BA5ADD308C67A8465C492B2230CAEF51F3322E544202B6C29DB2BD%26version_name%3D3.2.1%26utm_medium%3Diphone%26utm_campaign%3DAmovieproBgroupH0%26__reqTraceID%3D5BE85365-09D4-406C-918B-46FFA961D461%26regionid%3D%26f%3Dios%26cityId%3D1%26ci%3D1%26msid%3D5C982F63-3F73-4866-98D1-F3DFE91136222017-01-12-16-44352"

