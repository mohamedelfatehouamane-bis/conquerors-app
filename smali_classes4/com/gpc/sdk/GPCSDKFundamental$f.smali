.class public Lcom/gpc/sdk/GPCSDKFundamental$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/GPCAppConfigService$PrimaryAppConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/GPCSDKFundamental;->getAppConfig(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

.field public final synthetic b:Lcom/gpc/sdk/GPCSDKFundamental;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental$f;->b:Lcom/gpc/sdk/GPCSDKFundamental;

    iput-object p2, p0, Lcom/gpc/sdk/GPCSDKFundamental$f;->a:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppConfigLoadFailed(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    const-string v0, "GPCSDKFundamental"

    const-string v1, "onAppConfigLoadFailed"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    if-eqz p1, :cond_0

    .line 4
    iget-object p3, p0, Lcom/gpc/sdk/GPCSDKFundamental$f;->b:Lcom/gpc/sdk/GPCSDKFundamental;

    iget-object v0, p1, Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;->appConf:Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    invoke-static {p3, v0}, Lcom/gpc/sdk/GPCSDKFundamental;->access$102(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;)Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    .line 5
    iget-object p3, p0, Lcom/gpc/sdk/GPCSDKFundamental$f;->a:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

    invoke-interface {p3, p1, p2}, Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;->onFailback(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental$f;->a:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;->onFailback(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void
.end method

.method public onAppConfigLoadFinished(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 2

    .line 1
    const-string v0, "GPCSDKFundamental"

    const-string v1, "onAppConfigLoadFinished"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/GPCSDKFundamental$f;->b:Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-static {v0, p1}, Lcom/gpc/sdk/GPCSDKFundamental;->access$102(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;)Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/GPCSDKFundamental$f;->a:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;->onInitialized(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void
.end method
