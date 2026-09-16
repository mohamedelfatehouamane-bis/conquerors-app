.class public Lcom/gpc/sdk/GPCSDKFundamental$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/GPCSDKFundamental;->continueInitialize(Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/util/SDKTask$SDKTaskRunnable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;

.field public final synthetic b:Lcom/gpc/sdk/GPCSDKFundamental;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental$c;->b:Lcom/gpc/sdk/GPCSDKFundamental;

    iput-object p2, p0, Lcom/gpc/sdk/GPCSDKFundamental$c;->a:Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "GPCSDKFundamental"

    .line 1
    :try_start_0
    const-string v1, "continueInitialize async part start."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->onDelayedInit()V

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/GPCSDKFundamental$c;->a:Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;

    invoke-interface {v1}, Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/GPCSDKFundamental$c;->a:Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;

    invoke-interface {v0}, Lcom/gpc/sdk/GPCSDKFundamental$ContinueInitFinishedListener;->onFailed()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
