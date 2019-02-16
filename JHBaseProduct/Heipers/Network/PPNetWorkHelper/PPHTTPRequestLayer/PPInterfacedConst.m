//
//  PPInterfacedConst.m
//  PPNetworkHelper
//
//  Created by YiAi on 2017/7/6.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import "PPInterfacedConst.h"

#pragma mark - api前缀

#if DevelopSever
/** 接口前缀-开发服务器 */
NSString *const kApiPrefix = @"接口服务器的请求前缀 例: http://192.168.10.10:8080";
#elif ProductSever
/** 接口前缀-生产服务器 */
NSString *const kApiPrefix = @"";
#elif TestSever
/** 接口前缀-测试服务器 */ 
NSString *const kApiPrefix = @"";
#endif

#pragma mark - 具体的接口

#pragma mark - 用户相关
NSString *const Url_UserInfo = @"/api/user";
NSString *const Url_SendSms = @"/common/sms/send";//发送短信验证码
NSString *const Url_RefreshToken = @"/common/token/refresh";//刷新token
NSString *const Url_AppVersion = @"/common/version";//app版本号


NSString *const Url_Register = @"/api/user/register";
NSString *const Url_IsRealName = @"/api/user/proof/state";
NSString *const Url_ToRealName = @"/api/user/proof/bind";
NSString *const Url_ResetPassword = @"/api/user/password/reset";
NSString *const Url_LoginOfVerifycode = @"/api/user/login/verifycode";
NSString *const Url_LoginOfThirdplatform = @"/api/user/login/thirdplatform";
NSString *const Url_LoginOfPassword = @"/api/user/login/password";
NSString *const Url_UserList = @"/api/user/getuserlist";
NSString *const Url_FamilyInfoByAnchorid = @"/api/user/getfamilyinfobyanchorid";//根据主播Id获取家族信息
NSString *const Url_FamilyInfo = @"/api/user/getfamilyinfo";//获取家族信息
NSString *const Url_FanmilyAnchoridInfo = @"/api/user/getfamilyanchor";//获取所有家族主播信息
NSString *const Url_FanmilyAnchoridInfoByPatriarchid = @"/api/user/getanchorinfo";//通过族长id获取家族主播信息 patriarch==族长
NSString *const Url_EditUserInfo = @"/api/user/edit";//编辑用户信息
NSString *const Url_GlobalToken = @"/common/token/sign";//全局token
NSString *const Url_BindMobilePhone = @"/api/user/bindorunbund/mobile";//绑定和解绑手机号
NSString *const Url_Minedegree = @"/api/user/mylevel";//我的等级
NSString *const Url_BindZFBAccount = @"/api/user/addzfb";//绑定支付宝账号
NSString *const Url_UpLoadImage = @"/api/user/upload"; //上传图片

#pragma mark - 好友相关
NSString *const Url_AttentionFriend = @"/api/friend/attention";//关注好友
NSString *const Url_UnattentionFriend = @"/api/friend/unattention";//取消关注好友
NSString *const Url_FansList = @"/api/friend/fanslist";//获取fans列表
NSString *const Url_FriendsList = @"/api/friend/list";//获取好友列表
NSString *const Url_SearchUser = @"/api/friend/search";//用户查询 - 搜索用户
NSString *const Url_IsAttentionAndUserInfo = @"/api/friend/getinfo";//判断是否关注并返回详情
NSString *const Url_AnchorProfit = @"/apiaccount/safe/anchor/profit"; //主播收益
NSString *const Url_UserContribution = @"/apiaccount/safe/user/contribution"; //用户贡献
NSString *const Url_GuardAnchorList = @"/api/user/getMyDefendAnchorList"; //获取守护主播列表
#pragma mark - 礼物相关
NSString *const Url_GiftList = @"/api/gift/list";//礼物列表
NSString *const Url_IncomeRankingOfAnchorReceive = @"/api/gift/ranking";//收入排行榜接口
NSString *const Url_ContributeRank = @"/api/user/tuhao/rank/list";//贡献排行榜接口
NSString *const Url_ShareRank = @"/api/live/share/rank";//分享排行榜接口
NSString *const Url_ContributeRankingOfAnchorReceive = @"/api/gift/ranking-person";//主播财富贡献榜
NSString *const Url_ContributeRankingOfRoomReceive = @"/api/gift/ranking-room";//房间礼物贡献榜
NSString *const Url_SendGift = @"/api/gift/send";//发礼物接口

#pragma mark - 新闻相关
NSString *const Url_NewsCategoryList = @"/api/news/category/list";//获取所有新闻分类列表
NSString *const Url_NewsDetailById = @"/api/news/detail";//根据Id获取新闻详情
NSString *const Url_NewsListByClsssId = @"/api/news/list";//根据classId获取分类下面的相关新闻列表
NSString *const Url_NewsList = @"/api/news/app";//取得app端新闻列表


#pragma mark - 直播间相关
NSString *const Url_BeginLive = @"/api/live/start-live";//开始直播
NSString *const Url_EndLive = @"/api/live/end-live";//结束直播
NSString *const Url_RoomList = @"/api/live/get-rec-roomlist";//房间列表
NSString *const Url_JoinLiveRoom = @"/api/live/into-room";//观众加入直播间
NSString *const Url_RoomAudList = @"/api/live/get-aud-list";//获取直播间观众列表
NSString *const Url_AttentionLiveList = @"/api/live/my-attention-live";//取得我关注的直播列表
NSString *const Url_ReportTypeList = @"/api/live/reporttype/list";//获取举报类型
NSString *const Url_Report = @"/api/live/report";//举报
NSString *const Url_getWatchHistory = @"/api/live/getWatchHistory";//
NSString *const Url_userWatchDelet = @"/api/live/user-watch-delete"; //删除观看记录
NSString *const Url_getUserInfoByAnchorId = @"/api/live/getUserInfoByAnchorId";//根据主播ID获取用户信息
NSString *const Url_getOtherUserInfo = @"/api/live/getOtherUserInfo";// 根据主播id，用户id，自己id，获取这个id的详情
NSString *const Url_addMaster = @"/api/live/add-master";//添加房间管理员接口
NSString *const Url_deleteRoomMaster = @"/api/live/delete-room-master";//删除房间管理员接口
NSString *const Url_getMasterList = @"/api/live/getMaster"; //获取管理员列表
NSString *const Url_liveMute = @"/api/live/gag"; //直播禁言
NSString *const Url_AnchorPlayExp = @"/api/live/anchor-play-exp"; //主播播放获取经验值
NSString *const Url_UserWatchExp = @"/api/live/user-watch-exp"; //用户观看获取经验值
NSString *const Url_UserShareExp = @"/api/live/share"; //用户分享获取经验值
NSString *const Url_RoomRank = @"/api/live/getRoomRank"; //获取直播间排行;
NSString *const Url_AudienceLeaveLiveRoom = @"/api/live/leave-room";//观众离开房间
NSString *const Url_AudienceWatchDetailOfAnchorEndLiveRoom = @"/api/live/user-watch-detail"; //主播直播结束用户端返回直播详情
NSString *const Url_Recharge = @"/api/pay/apple/recharge"; //会员充值
NSString *const Url_SetDMPrice = @"/api/live/set-room-param";//设置弹幕价格
NSString *const Url_LivingRemind = @"/api/friend/friend/living/remind"; //开播提醒列表
NSString *const Url_PersonalNotice = @"/api/user/update/friend/notice"; //更改好友提醒
NSString *const Url_AllNotice = @"/api/user/update/living/notice"; //更改所有开播提醒
NSString *const Url_RobotIn = @"/api/live/robot/in" ; //机器人大部队
NSString *const Url_DefendAnchor = @"/api/user/defend"; //主播守护
NSString *const Url_DefendList = @"/api/user/getDefendList"; //主播守护列表
#pragma mark - 订单详情
NSString *const Url_OrderList = @"/api/pay/order/list"; //订单列表
NSString *const Url_OrderDetail = @"/api/pay/order/detail"; //订单详情
NSString *const Url_AcceptFamilyInvitation = @"/api/live/add/result"; //接受家族邀请
#pragma mark - 账号与安全设置
NSString *const Url_BindMobilePhoneForSecurity = @"/apiaccount/safe/bindorunbund/mobile"; //手机号绑定
NSString *const Url_SetupPassword = @"/apiaccount/safe/set/password"; //设置密码
NSString *const Url_AmendPassword = @"/apiaccount/safe/update/password"; //修改密码
NSString *const Url_ValidateMobilePhone = @"/apiaccount/safe/validate/mobile"; //验证手机号

#pragma mark - 获取QQ Unionid
NSString *const Url_QQUnionid = @"https://graph.qq.com/oauth2.0/me"; //Unionid

NSString *const Url_AliCeetification = @"/api/user/zhima/certification" ; //芝麻认证
NSString *const Url_ZhimaCallback = @"/callback/zhima"; //芝麻回调 

#pragma mark - 任务
NSString *const Url_MissionDay = @"/api/mission/day" ; //今日任务
NSString *const Url_MissionNotifyServer = @"/api/mission/first"; //任务通知服务器
NSString *const Url_MissionAchievement = @"/api/mission/achievement"; //成就任务
NSString *const Url_MissionReceive = @"/api/mission/receive"; //任务领取
NSString *const Url_MissionStoreList = @"/api/mission/shop/list"; //象牙商店列表
NSString *const Url_MissionStoreExchange = @"/api/mission/exchange"; //商品兑换
NSString *const Url_MyExchangeList = @"/api/mission/myshop";//我的兑换
NSString *const Url_MyPorpsList = @"/api/mission/special";//我的道具
NSString *const Url_MyMissionChange = @"/api/mission/change";;//更换特效
NSString *const Url_MyMissionNotice = @"/api/mission/notice";//任务领取通知

#pragma mark - 活动
NSString *const Url_ChristmasActivity = @"/api/xmas/2017/detail";//圣诞活动
NSString *const Url_CleanSharer =@"/api/xmas/2017/clean/sharer" ; // 清除sharer（用户通过XX分享进入）
NSString *const Url_TurnplateTime = @"/api/xmas/2017/turnplateTime";// 根据userId获取剩余转盘次数
NSString *const Url_SpreadActivity = @"/api/xmas/2017/spread";//推广单独的接口
NSString *const Url_LiveRoomShare = @"/common/share/info";//直播间分享
#pragma mark - 动画

NSString *const Url_giftResource = @"/common/update/resource/gift"; // 图片资源




