.class public interface abstract Lcom/gpc/sdk/account/service/AccountService;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract bindToThirdPartyAccount(Ljava/lang/String;Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/account/service/BindThirdPartyAccountListener;)V
.end method

.method public abstract checkDeviceHasBind(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
.end method

.method public abstract checkThirdPartyAccountHasBind(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
.end method

.method public abstract createAndLoginWithDevice(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
.end method

.method public abstract createAndLoginWithThirdPartyAuthorization(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
.end method

.method public abstract loginAsGuest(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
.end method

.method public abstract loginWithThirdPartyAccount(Lcom/gpc/sdk/account/bean/GPCThirdPartyAuthorizationProfile;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)V
.end method

.method public abstract requestBindingProfile(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/account/service/CheckBoundResultListener;)V
.end method

.method public abstract requestVerifyAccessKey(Ljava/lang/String;Lcom/gpc/sdk/account/service/VerifyAccessKeyListener;)V
.end method
