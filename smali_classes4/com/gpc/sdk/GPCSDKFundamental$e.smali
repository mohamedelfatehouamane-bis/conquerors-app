.class public Lcom/gpc/sdk/GPCSDKFundamental$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/GPCSDKFundamental;->initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfiguration;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

.field public final synthetic c:Lcom/gpc/sdk/GPCSDKFundamental;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCSDKFundamental;Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental$e;->c:Lcom/gpc/sdk/GPCSDKFundamental;

    iput-object p2, p0, Lcom/gpc/sdk/GPCSDKFundamental$e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/GPCSDKFundamental$e;->b:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 5

    .line 1
    const-string v0, "GPCSDKFundamental"

    const-string v1, "onFailed!"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {v0}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/GPCSDKFundamental$e;->b:Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;->onFailback(Lcom/gpc/sdk/bean/GPCPrimaryAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/GPCSDKFundamental$e;->c:Lcom/gpc/sdk/GPCSDKFundamental;

    iget-object v1, p0, Lcom/gpc/sdk/GPCSDKFundamental$e;->a:Ljava/lang/String;

    new-instance v2, Lcom/gpc/sdk/GPCSDKFundamental$e$a;

    invoke-direct {v2, p0}, Lcom/gpc/sdk/GPCSDKFundamental$e$a;-><init>(Lcom/gpc/sdk/GPCSDKFundamental$e;)V

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/GPCSDKFundamental;->getAppConfig(Ljava/lang/String;Lcom/gpc/sdk/GPCSDKFundamental$GPCSDKInitFinishedListener;)V

    return-void
.end method
