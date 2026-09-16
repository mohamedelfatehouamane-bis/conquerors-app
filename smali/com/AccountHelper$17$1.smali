.class Lcom/AccountHelper$17$1;
.super Ljava/lang/Object;
.source "AccountHelper.java"

# interfaces
.implements Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagerGuidelineCompatProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/AccountHelper$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/AccountHelper$17;


# direct methods
.method constructor <init>(Lcom/AccountHelper$17;)V
    .locals 0

    .line 699
    iput-object p1, p0, Lcom/AccountHelper$17$1;->this$0:Lcom/AccountHelper$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()Lcom/gpc/sdk/account/GPCSession;
    .locals 1

    .line 702
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedLoginTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 707
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 708
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GUEST:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {v1}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->FACEBOOK:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {v1}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {v1}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->GPC_ACCOUNT:Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    invoke-static {v1}, Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;->getLoginTypeValue(Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
