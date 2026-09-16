.class public Lcom/gpc/sdk/GPCSDKFundamental$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/GPCSDKFundamental;->initialize(Landroid/app/Application;Lcom/gpc/sdk/GPCConfiguration;Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;)V
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
.field public final synthetic a:Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;

.field public final synthetic b:Lcom/gpc/sdk/GPCSDKFundamental;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/GPCSDKFundamental;Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental$a;->b:Lcom/gpc/sdk/GPCSDKFundamental;

    iput-object p2, p0, Lcom/gpc/sdk/GPCSDKFundamental$a;->a:Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;

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
    const-string v1, "initialize async part start."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/GPCSDKFundamental$a;->b:Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-static {v1}, Lcom/gpc/sdk/GPCSDKFundamental;->access$000(Lcom/gpc/sdk/GPCSDKFundamental;)V

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/GPCSDKFundamental$a;->b:Lcom/gpc/sdk/GPCSDKFundamental;

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCSDKFundamental;->onInitSDKFinish()V

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/GPCSDKFundamental$a;->a:Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;

    invoke-interface {v1}, Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/GPCSDKFundamental$a;->a:Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;

    invoke-interface {v0}, Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;->onFailed()V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
