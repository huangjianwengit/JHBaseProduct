//
//  PPHTTPRequest.h
//  PPNetworkHelper
//
//  Created by AndyPang on 2017/4/10.
//  Copyright © 2017年 AndyPang. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 请求成功的block
 
 @param data   这个可能会是数组、字典类型
 @param response 响应体数据
 */
typedef void(^PPRequestSuccess)(BOOL success, NSString *status, NSString *hint,  id data, NSDictionary *resultDic); //blcok写成这种样式的好处是，一处修改了，其他地方都不要动了，全部修改
/**
 请求失败的block
 
 @param error 扩展信息
 */
typedef void(^PPRequestFailure)(NSError *error);


@interface YXHTTPRequest : NSObject


#pragma amrk - 通用接口

/** 全局token */
+ (NSURLSessionTask *)getGlobalTokenWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 短消息发送 */
+ (NSURLSessionTask *)getSendSmsWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 刷新token */
+ (NSURLSessionTask *)getRefreshTokenWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 获取版本号 */
+ (NSURLSessionTask *)getAppVersionWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;


#pragma mark - 用户相关

/** 注册 */
+ (NSURLSessionTask *)getRegisterWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 判断是否实名认证 */
+ (NSURLSessionTask *)getRealNameStatusWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 去实名认证 */
+ (NSURLSessionTask *)getRealNameWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 修改密码 */
+ (NSURLSessionTask *)getResetPasswordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 验证码登录 */
+ (NSURLSessionTask *)getLoginByVerifycodeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 第三方登录 */
+ (NSURLSessionTask *)getLoginByThirdplatformWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 手机密码登录 */
+ (NSURLSessionTask *)getLoginByPasswordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 更新用户信息 */
+ (NSURLSessionTask *)getRefreshUserInfoWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 获取用户当前基本信息 */
+ (NSURLSessionTask *)getUserInfoWithParameters:(id)parameters UserID:(NSString*)userId success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 我的等级 */
+ (NSURLSessionTask *)getMineGradeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 绑定和解绑手机号 */
+ (NSURLSessionTask *)getBindMobilePhoneWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 绑定支付宝账号 */
+ (NSURLSessionTask *)getBindZFBAccountWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 上传图片 */
+ (NSURLSessionTask *)getUpLoadImageWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
#pragma mark - 好友相关

/** 关注好友 */
+ (NSURLSessionTask *)getAttentionFriendWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 取消关注好友 */
+ (NSURLSessionTask *)getUnattentionFriendWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 获取fans列表 */
+ (NSURLSessionTask *)getFansListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 获取好友列表 */
+ (NSURLSessionTask *)getFriendsListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 用户查询 */
+ (NSURLSessionTask *)getSearchUserWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 判断是否关注并返回详情 */
+ (NSURLSessionTask *)getAttentionAndUserInfoWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 用户贡献列表 */
+ (NSURLSessionTask *)getUserContributionWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**主播收益列表*/
+ (NSURLSessionTask *)getAnchorProfitWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**守护主播列表*/
+ (NSURLSessionTask *)getGuardanchorListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
#pragma mark - 礼物相关

/** 礼物列表 */
+ (NSURLSessionTask *)getGiftListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 首页-收入排行榜 */
+ (NSURLSessionTask *)getIncomeRankingOfAnchorReceiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 首页-贡献排行榜 */
+ (NSURLSessionTask *)getContributeRankWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

/** 首页-分享排行榜 */
+ (NSURLSessionTask *)getShareRankWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

/** 主播财富贡献榜 */
+ (NSURLSessionTask *)getContributeRankingOfAnchorReceiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 房间礼物贡献榜 */
+ (NSURLSessionTask *)getContributeRankingOfRoomReceiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 发礼物接口 */
+ (NSURLSessionTask *)getSendGiftWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;


#pragma mark - 新闻相关

/** 获取所有新闻分类列表 */
+ (NSURLSessionTask *)getNewsCategoryListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 根据Id获取新闻详情 */
+ (NSURLSessionTask *)getNewsDetailByIdWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 根据classId获取分类下面的相关新闻列表*/
+ (NSURLSessionTask *)getNewsListByClsssIdWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

/** 取得app端新闻列表 */
+ (NSURLSessionTask *)getNewsListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

#pragma mark - 直播间相关

/** 开始直播 */
+ (NSURLSessionTask *)getBeginLiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 结束直播 */
+ (NSURLSessionTask *)getEndLiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 热门房间列表 */
+ (NSURLSessionTask *)getRoomListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 观众进入房间 */
+ (NSURLSessionTask *)getJoinLiveRoomWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 获取直播间观众列表 */
+ (NSURLSessionTask *)getJoinLiveRoomAudListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 取得我关注的直播列表 */
+ (NSURLSessionTask *)getAttentionLiveListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 获取举报类型 */
+ (NSURLSessionTask *)getReportTypeListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 举报用户 */
+ (NSURLSessionTask *)getReportWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 观看记录 */
+ (NSURLSessionTask *)getWatchHistoryWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 删除记录 */
+ (NSURLSessionTask *)getUserDeleteWatchRecordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 根据主播ID获取用户信息 */
+ (NSURLSessionTask *)getUserInfoByAnchorIdWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 根据主播id，用户id，自己id，获取这个id的详情 */
+ (NSURLSessionTask *)getOtherUserInfoWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 根据主播ID获取管理员列表 */
+ (NSURLSessionTask *)getMasterByAnchorIdWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 添加房间管理员接口 */
+ (NSURLSessionTask *)getAddMasterWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 删除房间管理员接口 */
+ (NSURLSessionTask *)getDeleteRoomMasterWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 直播禁言 */
+ (NSURLSessionTask *)getLiveMuteWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 主播播放获取经验值 */
+ (NSURLSessionTask *)getAnchorPlayExWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 用户观看获取经验值 */
+ (NSURLSessionTask *)getUserWatchExpWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 用户分享获取经验值 */
+ (NSURLSessionTask *)getShareExpWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 获取直播间排行榜 */
+ (NSURLSessionTask *)getRoomRankWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 观众离开房间 */
+ (NSURLSessionTask *)getAudienceLeaveLiveRoomWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 主播直播结束用户端返回直播详情 */
+ (NSURLSessionTask *)getAudienceWatchDetailOfAnchorEndLiveRoomWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 主播设置弹幕价格 */
+ (NSURLSessionTask *)getSetDMPriceWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 开播提醒列表 */
+ (NSURLSessionTask *)getLivingRemindListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 修改好友开播提醒 */
+ (NSURLSessionTask *)getUpdateFriendNoticeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 修改所有开播提醒 */
+ (NSURLSessionTask *)getUpdateAllNoticeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 机器人大部队 */
+ (NSURLSessionTask *)getRobotInWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 主播守护 */
+ (NSURLSessionTask *)getDefendAnchorWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**守护列表*/
+ (NSURLSessionTask *)getDefendListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**
 主播接受家族邀请
 */
+ (NSURLSessionTask *)postAcceptFamilyInvitationWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

#pragma mark - 支付相关
/** 会员充值 */
+ (NSURLSessionTask *)getRechargeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 取得订单列表 */
+ (NSURLSessionTask *)getOrderListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
#pragma mark - 订单

/** 订单详情 */
+ (NSURLSessionTask *)getOrderDeatilWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

#pragma mark - 账号与安全设置
/**  手机号绑定 */
+ (NSURLSessionTask *)getBindMobilePhoneForSecureWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**  设置密码 */
+ (NSURLSessionTask *)getSetupPasswordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**  修改密码 */
+ (NSURLSessionTask *)getAmendPasswordWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**  验证手机号 */
+ (NSURLSessionTask *)getValidateMobilePhoneWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;


#pragma  mark   - QQ Unionid
+ (NSURLSessionTask *)getQQUnionidWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

/**
 *芝麻认证
 */
+ (NSURLSessionTask *)getAliCertificationWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure ;

/**
 芝麻认证结果查询

  */
+ (NSURLSessionTask *)getZhimaCallbackWithParameters:(id)parameters UserID:(NSString*)userId success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
#pragma mark - 任务
/**今日任务*/
+ (NSURLSessionTask *)getMissionDayWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/** 通知服务器任务 */
+ (NSURLSessionTask *)postMissionNotifyToServerWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**成就任务*/
+ (NSURLSessionTask *)getMissionAchievementWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**
 *任务领取
 */
+ (NSURLSessionTask *)postMissionReceiveWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**任务商店列表*/
+ (NSURLSessionTask *)getMissionStoreListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**
 * 商品兑换
 */
+ (NSURLSessionTask *)postMissionStoreExchangeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**我的兑换*/
+ (NSURLSessionTask *)getMyExchangeListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**我的道具*/
+ (NSURLSessionTask *)getMyPropsListWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

/**更换特效*/
+ (NSURLSessionTask *)getMyChangeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

/**任务通知*/
+ (NSURLSessionTask *)getMyMissionNoticeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

#pragma mark - 圣诞活动
/**圣诞活动*/
+ (NSURLSessionTask *)getChristmasActivityWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**清除分享者*/
+ (NSURLSessionTask *)postCleanShareWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**转盘剩余次数*/
+ (NSURLSessionTask *)getTurnplateTimeWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

#pragma mark - 动画
// 图片资源
+ (NSURLSessionTask *)getGiftResourceWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;

/**
 推广活动
 */
+ (NSURLSessionTask *)getSpreadActivityWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;
/**
 直播间分享文案
 */
+ (NSURLSessionTask *)getLiveRoomShareWithParameters:(id)parameters success:(PPRequestSuccess)success failure:(PPRequestFailure)failure;


@end



