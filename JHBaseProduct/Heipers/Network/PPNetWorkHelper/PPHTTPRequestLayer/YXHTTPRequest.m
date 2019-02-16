//
//  PPHTTPRequest.m
//  PPNetworkHelper
//
//  Created by AndyPang on 2017/4/10.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import "YXHTTPRequest.h"
#import "PPInterfacedConst.h"
#import "PPNetworkHelper.h"
//#import "UIApplication+Utility.h"
//#import "LoginViewController.h"

@implementation YXHTTPRequest

#pragma mark - 具体的接口请求

#pragma amrk - 通用接口

/** 获取全局token */
+ (NSURLSessionTask *)getGlobalTokenWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_GlobalToken];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 短消息发送 */
+ (NSURLSessionTask *)getSendSmsWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_SendSms];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 刷新token */
+ (NSURLSessionTask *)getRefreshTokenWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_RefreshToken];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 获取版本号 */
+ (NSURLSessionTask *)getAppVersionWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AppVersion];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

#pragma mark - 用户相关

/** 注册 */
+ (NSURLSessionTask *)getRegisterWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_Register];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 手机密码登录 */
+ (NSURLSessionTask *)getLoginByPasswordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_LoginOfPassword];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 验证码登录 */
+ (NSURLSessionTask *)getLoginByVerifycodeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_LoginOfVerifycode];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 更新用户信息 */
+ (NSURLSessionTask *)getRefreshUserInfoWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_EditUserInfo];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 修改密码 */
+ (NSURLSessionTask *)getResetPasswordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_ResetPassword];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 第三方登录 */
+ (NSURLSessionTask *)getLoginByThirdplatformWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_LoginOfThirdplatform];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 判断是否实名认证 */
+ (NSURLSessionTask *)getRealNameStatusWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_IsRealName];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 去实名认证 */
+ (NSURLSessionTask *)getRealNameWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_ToRealName];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 绑定和解绑手机号 */
+ (NSURLSessionTask *)getBindMobilePhoneWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_BindMobilePhone];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 我的等级 */
+ (NSURLSessionTask *)getMineGradeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_Minedegree];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 绑定支付宝账号 */
+ (NSURLSessionTask *)getBindZFBAccountWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_BindZFBAccount];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 上传图片 */
+ (NSURLSessionTask *)getUpLoadImageWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_UpLoadImage];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

#pragma mark - 好友相关

/** 关注好友 */
+ (NSURLSessionTask *)getAttentionFriendWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AttentionFriend];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 取消关注好友 */
+ (NSURLSessionTask *)getUnattentionFriendWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_UnattentionFriend];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 获取fans列表 */
+ (NSURLSessionTask *)getFansListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_FansList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 获取好友列表 */
+ (NSURLSessionTask *)getFriendsListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_FriendsList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 用户查询 */
+ (NSURLSessionTask *)getSearchUserWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_SearchUser];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 获取用户当前基本信息 */
+ (NSURLSessionTask *)getUserInfoWithParameters:(id)parameters UserID:(NSString*)userId success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@/%@",kApiPrefix,Url_UserInfo,userId];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 判断是否关注并返回详情 */
+ (NSURLSessionTask *)getAttentionAndUserInfoWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_IsAttentionAndUserInfo];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 用户贡献列表 */
+ (NSURLSessionTask *)getUserContributionWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_UserContribution];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**主播收益列表*/
+ (NSURLSessionTask *)getAnchorProfitWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AnchorProfit];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**守护主播列表*/
+ (NSURLSessionTask *)getGuardanchorListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_GuardAnchorList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

#pragma mark - 礼物相关

/** 礼物列表 */
+ (NSURLSessionTask *)getGiftListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_GiftList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 首页-收入排行榜接口 */
+ (NSURLSessionTask *)getIncomeRankingOfAnchorReceiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_IncomeRankingOfAnchorReceive];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 首页-贡献排行榜 */
+ (NSURLSessionTask *)getContributeRankWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_ContributeRank];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 首页-分享排行榜 */
+ (NSURLSessionTask *)getShareRankWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_ShareRank];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 主播财富贡献榜 */
+ (NSURLSessionTask *)getContributeRankingOfAnchorReceiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_ContributeRankingOfAnchorReceive];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 房间礼物贡献榜 */
+ (NSURLSessionTask *)getContributeRankingOfRoomReceiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_ContributeRankingOfRoomReceive];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 发礼物接口 */
+ (NSURLSessionTask *)getSendGiftWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_SendGift];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

#pragma mark - 新闻相关

/** 获取所有新闻分类列表 */
+ (NSURLSessionTask *)getNewsCategoryListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_NewsCategoryList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 根据Id获取新闻详情 */
+ (NSURLSessionTask *)getNewsDetailByIdWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_NewsDetailById];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 根据classId获取分类下面的相关新闻列表*/
+ (NSURLSessionTask *)getNewsListByClsssIdWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_NewsListByClsssId];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 取得app端新闻列表 */
+ (NSURLSessionTask *)getNewsListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_NewsList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}


#pragma mark - 直播间相关

/** 开始直播 */
+ (NSURLSessionTask *)getBeginLiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_BeginLive];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 结束直播 */
+ (NSURLSessionTask *)getEndLiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_EndLive];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 热门房间列表 */
+ (NSURLSessionTask *)getRoomListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_RoomList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 观众进入房间 */
+ (NSURLSessionTask *)getJoinLiveRoomWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_JoinLiveRoom];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 获取直播间观众列表 */
+ (NSURLSessionTask *)getJoinLiveRoomAudListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_RoomAudList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];

}

/** 获取举报类型 */
+ (NSURLSessionTask *)getReportTypeListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_ReportTypeList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
    
}

/** 举报用户 */
+ (NSURLSessionTask *)getReportWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_Report];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
    
}

/** 取得我关注的直播列表 */
+ (NSURLSessionTask *)getAttentionLiveListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AttentionLiveList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 观看记录 */
+ (NSURLSessionTask *)getWatchHistoryWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_getWatchHistory];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 删除记录 */
+ (NSURLSessionTask *)getUserDeleteWatchRecordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_userWatchDelet];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
    
}

/** 根据主播ID获取用户信息 */
+ (NSURLSessionTask *)getUserInfoByAnchorIdWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_getUserInfoByAnchorId];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 根据主播id，用户id，自己id，获取这个id的详情 */
+ (NSURLSessionTask *)getOtherUserInfoWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_getOtherUserInfo];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 根据主播ID获取管理员列表 */
+ (NSURLSessionTask *)getMasterByAnchorIdWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_getMasterList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 添加房间管理员接口 */
+ (NSURLSessionTask *)getAddMasterWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_addMaster];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
    
}
/** 删除房间管理员接口 */
+ (NSURLSessionTask *)getDeleteRoomMasterWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_deleteRoomMaster];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
    
}
/** 直播禁言 */
+ (NSURLSessionTask *)getLiveMuteWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_liveMute];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
    
}

/** 主播播放获取经验值 */
+ (NSURLSessionTask *)getAnchorPlayExWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AnchorPlayExp];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
    
}
/** 用户观看获取经验值 */
+ (NSURLSessionTask *)getUserWatchExpWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_UserWatchExp];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
    
}

/** 用户分享获取经验值 */
+ (NSURLSessionTask *)getShareExpWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_UserShareExp];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
    
}
/**获取直播间排行榜*/
+ (NSURLSessionTask *)getRoomRankWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_RoomRank];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 观众离开房间 */
+ (NSURLSessionTask *)getAudienceLeaveLiveRoomWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AudienceLeaveLiveRoom];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 主播直播结束用户端返回直播详情 */
+ (NSURLSessionTask *)getAudienceWatchDetailOfAnchorEndLiveRoomWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AudienceWatchDetailOfAnchorEndLiveRoom];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/** 主播设置弹幕价格 */
+ (NSURLSessionTask *)getSetDMPriceWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_SetDMPrice];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 开播提醒列表 */
+ (NSURLSessionTask *)getLivingRemindListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_LivingRemind];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 修改好友开播提醒 */
+ (NSURLSessionTask *)getUpdateFriendNoticeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_PersonalNotice];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 修改所有开播提醒 */
+ (NSURLSessionTask *)getUpdateAllNoticeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AllNotice];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**机器人大部队*/
+ (NSURLSessionTask *)getRobotInWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_RobotIn];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/** 主播守护 */
+ (NSURLSessionTask *)getDefendAnchorWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_DefendAnchor];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**守护列表*/
+ (NSURLSessionTask *)getDefendListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_DefendList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
#pragma mark - 支付相关
/** 会员充值 */
+ (NSURLSessionTask *)getRechargeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_Recharge];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

#pragma mark - 订单
/**订单列表*/
+ (NSURLSessionTask *)getOrderListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_OrderList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}


#pragma mark - 账号与安全设置
/**  手机号绑定 */
+ (NSURLSessionTask *)getBindMobilePhoneForSecureWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_BindMobilePhoneForSecurity];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**  设置密码 */
+ (NSURLSessionTask *)getSetupPasswordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_SetupPassword];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**  修改密码 */
+ (NSURLSessionTask *)getAmendPasswordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AmendPassword];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**  验证手机号 */
+ (NSURLSessionTask *)getValidateMobilePhoneWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_ValidateMobilePhone];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}


#pragma  mark   - QQ Unionid
+ (NSURLSessionTask *)getQQUnionidWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@",Url_QQUnionid];
    
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}


/**
 *芝麻认证
 */
+ (NSURLSessionTask *)getAliCertificationWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AliCeetification];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}


/** 获取用户当前基本信息 */
+ (NSURLSessionTask *)getZhimaCallbackWithParameters:(id)parameters UserID:(NSString*)userId success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@/%@",kApiPrefix,Url_ZhimaCallback,userId];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**订单详情*/
+ (NSURLSessionTask *)getOrderDeatilWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_OrderDetail];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**
 主播接受家族邀请
 */
+ (NSURLSessionTask *)postAcceptFamilyInvitationWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_AcceptFamilyInvitation];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/*
 配置好PPNetworkHelper各项请求参数,封装成一个公共方法,给以上方法调用,
 相比在项目中单个分散的使用PPNetworkHelper/其他网络框架请求,可大大降低耦合度,方便维护
 在项目的后期, 你可以在公共请求方法内任意更换其他的网络请求工具,切换成本小
 */
#pragma mark - 任务
/**
 *通知服务器任务
 */
+ (NSURLSessionTask *)postMissionNotifyToServerWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MissionNotifyServer];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}


/**今日任务*/
+ (NSURLSessionTask *)getMissionDayWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MissionDay];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**成就任务*/
+ (NSURLSessionTask *)getMissionAchievementWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MissionAchievement];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**
 *任务领取
 */
+ (NSURLSessionTask *)postMissionReceiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MissionReceive];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**任务商店列表*/
+ (NSURLSessionTask *)getMissionStoreListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MissionStoreList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**
 * 商品兑换
 */
+ (NSURLSessionTask *)postMissionStoreExchangeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MissionStoreExchange];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**我的兑换*/
+ (NSURLSessionTask *)getMyExchangeListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MyExchangeList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**我的道具*/
+ (NSURLSessionTask *)getMyPropsListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MyPorpsList];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**更换特效*/
+ (NSURLSessionTask *)getMyChangeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MyMissionChange];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**任务通知*/
+ (NSURLSessionTask *)getMyMissionNoticeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_MyMissionNotice];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**圣诞活动*/
+ (NSURLSessionTask *)getChristmasActivityWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_ChristmasActivity];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

/**清除分享者*/
+ (NSURLSessionTask *)postCleanShareWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_CleanSharer];
    return [self postRequestWithURL:url parameters:parameters success:success failure:failure];
}
/**转盘剩余次数*/
+ (NSURLSessionTask *)getTurnplateTimeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_TurnplateTime];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}


#pragma mark - 动画
// 图片资源
+ (NSURLSessionTask *)getGiftResourceWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_giftResource];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

//推广活动
+ (NSURLSessionTask *)getSpreadActivityWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_SpreadActivity];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

//直播间分享文案
+ (NSURLSessionTask *)getLiveRoomShareWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    NSString *url = [NSString stringWithFormat:@"%@%@",kApiPrefix,Url_LiveRoomShare];
    return [self getRequestWithURL:url parameters:parameters success:success failure:failure];
}

#pragma mark - 请求的公共方法
//post请求
+ (NSURLSessionTask *)postRequestWithURL:(NSString *)URL parameters:(NSMutableDictionary *)parameter success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    // 在请求之前你可以统一配置你请求的相关参数 ,设置请求头, 请求参数的格式, 返回数据的格式....这样你就不需要每次请求都要设置一遍相关参数
    // 设置请求头
//    [PPNetworkHelper setValue:@"9" forHTTPHeaderField:@"fromType"];
    
//    if ([URL containsString:@"/common/token/sign"]) {
//        URL = [NSString stringWithFormat:@"%@",URL];
//    }
//    else{
//        URL = [NSString stringWithFormat:@"%@?token=%@",URL,[YXGlobal shareManager].token];
// 
//    }
    
    //这里判断当前是否有网络:注释的原因是 在sdk重连的时候 体验不好
//    BOOL isNetwork = [PPNetworkHelper isNetwork];
//    if (!isNetwork) {
//        ShowMsg(@"网络连接失败,请检查您的网络");
//    }
    
    // 发起请求
    return [PPNetworkHelper POST:URL parameters:parameter success:^(BOOL isSuccess, NSString *status, NSString *hint, NSDictionary *data, NSDictionary *resultDic) {
        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....
        
        //处理异地登录

        
        success(isSuccess,status,hint,data,resultDic);
    } failure:^(NSError *error) {
        // 同上
        failure(error);
    }];
}

//get请求
+ (NSURLSessionTask *)getRequestWithURL:(NSString *)URL parameters:(NSMutableDictionary *)parameter success:(PPRequestSuccess)success failure:(PPRequestFailure)failure
{
    //这里判断当前是否有网络
//    BOOL isNetwork = [PPNetworkHelper isNetwork];
//    if (!isNetwork) {
//        ShowMsg(@"网络连接失败,请检查您的网络");
//    }
    
    return [PPNetworkHelper GET:URL parameters:parameter success:^(BOOL isSuccess, NSString *status, NSString *hint, NSDictionary *data, NSDictionary *resultDic) {
        // 在这里你可以根据项目自定义其他一些重复操作,比如加载页面时候的等待效果, 提醒弹窗....

        
        //处理异地登录
        
        success(isSuccess,status,hint,data,resultDic);
        
    } failure:^(NSError *error) {
        
        failure(error);
    }];
}

@end
