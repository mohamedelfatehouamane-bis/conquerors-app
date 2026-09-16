.class public Lcom/gpc/sdk/account/GPCSession$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;

.field public final synthetic b:Lcom/gpc/sdk/account/GPCSession;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession$a;->b:Lcom/gpc/sdk/account/GPCSession;

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCSession$a;->a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession$a;->a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/gpc/util/SDKTask;

    invoke-direct {v0}, Lcom/gpc/util/SDKTask;-><init>()V

    .line 3
    new-instance v1, Lcom/gpc/sdk/account/GPCSession$a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/account/GPCSession$a$a;-><init>(Lcom/gpc/sdk/account/GPCSession$a;Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/gpc/util/SDKTask;->excuteInMainLooper(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
