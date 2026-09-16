.class public Lcom/gpc/sdk/GPCSDKFundamental$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/GPCSDKFundamental$e;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/GPCSDKFundamental$e;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCSDKFundamental$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental$e$a;->a:Lcom/gpc/sdk/GPCSDKFundamental$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailback(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailback current:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryConfig == null?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSDKFundamental"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/GPCSDKFundamental$e$a;->a:Lcom/gpc/sdk/GPCSDKFundamental$e;

    iget-object v0, v0, Lcom/gpc/sdk/GPCSDKFundamental$e;->b:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;->onFailback(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void
.end method

.method public onInitialized(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onInitialized serverTime:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSDKFundamental"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/GPCSDKFundamental$e$a;->a:Lcom/gpc/sdk/GPCSDKFundamental$e;

    iget-object v0, v0, Lcom/gpc/sdk/GPCSDKFundamental$e;->b:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;->onInitialized(Lcom/gpc/sdk/bean/GPCPrimaryAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void
.end method
