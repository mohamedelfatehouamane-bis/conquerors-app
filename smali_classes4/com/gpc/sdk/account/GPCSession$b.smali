.class public Lcom/gpc/sdk/account/GPCSession$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCSession;->requestSSOTokenForWeb(Ljava/lang/String;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;

.field public final synthetic b:Lcom/gpc/sdk/account/GPCSession;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession$b;->b:Lcom/gpc/sdk/account/GPCSession;

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCSession$b;->a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession$b;->a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->createException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
