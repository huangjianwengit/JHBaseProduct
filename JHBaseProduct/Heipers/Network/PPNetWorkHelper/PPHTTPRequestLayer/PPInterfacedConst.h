//
//  PPInterfacedConst.h
//  PPNetworkHelper
//
//  Created by AndyPang on 2017/4/10.
//  Copyright © 2017年 AndyPang. All rights reserved.
//http://open.yxshow.tv/v3/swagger-ui.html#/

#import <UIKit/UIKit.h>
/*
 将项目中所有的接口写在这里,方便统一管理,降低耦合
 
 这里通过宏定义来切换你当前的服务器类型,
 将你要切换的服务器类型宏后面置为真(即>0即可),其余为假(置为0)
 如下:现在的状态为测试服务器    
 这样做切换方便,不用来回每个网络请求修改请求域名,降低出错事件
 */

#define DevelopSever 0
#define TestSever    0
#define ProductSever 1

/** 接口前缀-开发服务器 */
UIKIT_EXTERN NSString *const kApiPrefix;

#pragma mark - 详细接口地址

#pragma mark - 用户相关
UIKIT_EXTERN NSString *const Url_UserInfo;
UIKIT_EXTERN NSString *const Url_SendSms;//发送短信验证码
UIKIT_EXTERN NSString *const Url_SendSms;//发送短信验证码
UIKIT_EXTERN NSString *const Url_RefreshToken;//刷新token
UIKIT_EXTERN NSString *const Url_AppVersion;//app版本号

UIKIT_EXTERN NSString *const Url_Register;
UIKIT_EXTERN NSString *const Url_IsRealName;
UIKIT_EXTERN NSString *const Url_ToRealName;
UIKIT_EXTERN NSString *const Url_ResetPassword;
UIKIT_EXTERN NSString *const Url_LoginOfVerifycode;
UIKIT_EXTERN NSString *const Url_LoginOfThirdplatform;
UIKIT_EXTERN NSString *const Url_LoginOfPassword;
UIKIT_EXTERN NSString *const Url_UserList;
UIKIT_EXTERN NSString *const Url_FamilyInfoByAnchorid;//根据主播Id获取家族信息
UIKIT_EXTERN NSString *const Url_FamilyInfo;//获取家族信息
UIKIT_EXTERN NSString *const Url_FanmilyAnchoridInfo;//获取家族主播信息
UIKIT_EXTERN NSString *const Url_FanmilyAnchoridInfoByPatriarchid;//通过族长id获取家族主播信息 patriarch==族长
UIKIT_EXTERN NSString *const Url_EditUserInfo;//编辑用户信息
UIKIT_EXTERN NSString *const Url_GlobalToken;//全局token
UIKIT_EXTERN NSString *const Url_BindMobilePhone;//绑定和解绑手机号
UIKIT_EXTERN NSString *const Url_Minedegree;//我的等级
UIKIT_EXTERN NSString *const Url_BindZFBAccount;//绑定支付宝账号
UIKIT_EXTERN NSString *const Url_UpLoadImage; //上传图片
#pragma mark - 好友相关
UIKIT_EXTERN NSString *const Url_AttentionFriend;//关注好友
UIKIT_EXTERN NSString *const Url_UnattentionFriend;//取消关注好友
UIKIT_EXTERN NSString *const Url_FansList;//获取fans列表
UIKIT_EXTERN NSString *const Url_FriendsList;//获取好友列表
UIKIT_EXTERN NSString *const Url_SearchUser;//用户查询 - 搜索用户
UIKIT_EXTERN NSString *const Url_IsAttentionAndUserInfo;//判断是否关注并返回详情
UIKIT_EXTERN NSString *const Url_AnchorProfit; //主播收益
UIKIT_EXTERN NSString *const Url_UserContribution; //用户贡献
UIKIT_EXTERN NSString *const Url_GuardAnchorList; //获取守护主播列表

#pragma mark - 礼物相关
UIKIT_EXTERN NSString *const Url_GiftList;//礼物列表
UIKIT_EXTERN NSString *const Url_IncomeRankingOfAnchorReceive;//收入排行榜接口
UIKIT_EXTERN NSString *const Url_ContributeRank;//贡献排行榜接口
UIKIT_EXTERN NSString *const Url_ShareRank;//分享排行榜接口

UIKIT_EXTERN NSString *const Url_ContributeRankingOfAnchorReceive;//主播财富贡献榜
UIKIT_EXTERN NSString *const Url_ContributeRankingOfRoomReceive;//房间礼物贡献榜
UIKIT_EXTERN NSString *const Url_SendGift;//发礼物接口


#pragma mark - 新闻相关
UIKIT_EXTERN NSString *const Url_NewsCategoryList;//获取所有新闻分类列表
UIKIT_EXTERN NSString *const Url_NewsDetailById;//根据Id获取新闻详情
UIKIT_EXTERN NSString *const Url_NewsListByClsssId;//根据classId获取分类下面的相关新闻列表
UIKIT_EXTERN NSString *const Url_NewsList;//取得app端新闻列表

#pragma mark - 直播间相关
UIKIT_EXTERN NSString *const Url_BeginLive;//开始直播
UIKIT_EXTERN NSString *const Url_EndLive;//结束直播
UIKIT_EXTERN NSString *const Url_RoomList;//房间列表
UIKIT_EXTERN NSString *const Url_JoinLiveRoom;//观众加入直播间
UIKIT_EXTERN NSString *const Url_RoomAudList; //获取直播减观众列表
UIKIT_EXTERN NSString *const Url_AttentionLiveList;//取得我关注的直播列表
UIKIT_EXTERN NSString *const Url_ReportTypeList;//获取举报类型
UIKIT_EXTERN NSString *const Url_Report ;//举报
UIKIT_EXTERN NSString *const Url_getWatchHistory; //观看记录
UIKIT_EXTERN NSString *const Url_userWatchDelet; //删除观看记录
UIKIT_EXTERN NSString *const Url_getUserInfoByAnchorId;//根据主播ID获取用户信息
UIKIT_EXTERN NSString *const Url_getOtherUserInfo;// 根据主播id，用户id，自己id，获取这个id的详情
UIKIT_EXTERN NSString *const Url_addMaster;//添加房间管理员接口
UIKIT_EXTERN NSString *const Url_deleteRoomMaster;//删除房间管理员接口
UIKIT_EXTERN NSString *const Url_getMasterList; //获取管理员列表
UIKIT_EXTERN NSString *const Url_liveMute; //直播禁言
UIKIT_EXTERN NSString *const Url_AnchorPlayExp; //主播播放获取经验值
UIKIT_EXTERN NSString *const Url_UserWatchExp; //用户观看获取经验值
UIKIT_EXTERN NSString *const Url_UserShareExp; //用户分享获取经验值
UIKIT_EXTERN NSString *const Url_RoomRank; //获取直播间排行
UIKIT_EXTERN NSString *const Url_AudienceLeaveLiveRoom;//观众离开房间
UIKIT_EXTERN NSString *const Url_AudienceWatchDetailOfAnchorEndLiveRoom; //主播直播结束用户端返回直播详情
UIKIT_EXTERN NSString *const Url_Recharge; //会员充值
UIKIT_EXTERN NSString *const Url_SetDMPrice;//设置弹幕价格
UIKIT_EXTERN NSString *const Url_LivingRemind; //开播提醒列表
UIKIT_EXTERN NSString *const Url_PersonalNotice; //更改好友提醒
UIKIT_EXTERN NSString *const Url_AllNotice; //更改所有开播提醒
UIKIT_EXTERN NSString *const Url_RobotIn; //机器人大部队
UIKIT_EXTERN NSString *const Url_DefendAnchor; //主播守护
UIKIT_EXTERN NSString *const Url_DefendList; //主播守护列表
UIKIT_EXTERN NSString *const Url_AcceptFamilyInvitation; //接受家族邀请


#pragma mark - 订单
UIKIT_EXTERN NSString *const Url_OrderList; //订单列表
UIKIT_EXTERN NSString *const Url_OrderDetail; //订单详情

#pragma mark - 账号与安全设置
UIKIT_EXTERN NSString *const Url_BindMobilePhoneForSecurity; //手机号绑定
UIKIT_EXTERN NSString *const Url_SetupPassword; //设置密码
UIKIT_EXTERN NSString *const Url_AmendPassword; //修改密码
UIKIT_EXTERN NSString *const Url_ValidateMobilePhone; //验证手机号


#pragma mark - 获取QQ Unionid 

UIKIT_EXTERN NSString *const Url_QQUnionid ; //Unionid
UIKIT_EXTERN NSString *const Url_AliCeetification ; //芝麻认证
UIKIT_EXTERN NSString *const Url_ZhimaCallback;

#pragma mark - 任务

UIKIT_EXTERN NSString *const Url_MissionDay ; //今日任务
UIKIT_EXTERN NSString *const Url_MissionNotifyServer; //任务通知服务器
UIKIT_EXTERN NSString *const Url_MissionAchievement; //成就任务
UIKIT_EXTERN NSString *const Url_MissionReceive; //任务领取
UIKIT_EXTERN NSString *const Url_MissionStoreList; //象牙商店列表
UIKIT_EXTERN NSString *const Url_MissionStoreExchange; //商品兑换
UIKIT_EXTERN NSString *const Url_MyExchangeList;//我的兑换
UIKIT_EXTERN NSString *const Url_MyPorpsList;//我的道具
UIKIT_EXTERN NSString *const Url_MyMissionChange;//更换特效
UIKIT_EXTERN NSString *const Url_MyMissionNotice;//任务通知

#pragma mark - 活动
UIKIT_EXTERN NSString *const Url_ChristmasActivity;//圣诞活动
UIKIT_EXTERN NSString *const Url_CleanSharer; //清除sharer（用户通过XX分享进入）
UIKIT_EXTERN NSString *const Url_TurnplateTime;//根据userId获取剩余转盘次数
UIKIT_EXTERN NSString *const Url_SpreadActivity;//推广单独的接口
UIKIT_EXTERN NSString *const Url_LiveRoomShare;//直播间分享

#pragma mark - 动画
UIKIT_EXTERN NSString *const Url_giftResource; // 图片资源








