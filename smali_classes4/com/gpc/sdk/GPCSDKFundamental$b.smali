.class public Lcom/gpc/sdk/GPCSDKFundamental$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskResultListener;


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
        "Lcom/gpc/util/SDKTask$SDKTaskResultListener<",
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
    iput-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental$b;->b:Lcom/gpc/sdk/GPCSDKFundamental;

    iput-object p2, p0, Lcom/gpc/sdk/GPCSDKFundamental$b;->a:Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    const-string p2, "GPCSDKFundamental"

    invoke-static {p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/GPCSDKFundamental$b;->a:Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;

    invoke-interface {p1}, Lcom/gpc/sdk/GPCSDKFundamental$InitFinishedListener;->onFailed()V

    :cond_0
    return-void
.end method
