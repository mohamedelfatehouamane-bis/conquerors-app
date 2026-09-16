.class public Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;

.field public final synthetic b:Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy$a;->b:Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy;

    iput-object p2, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy$a;->a:Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p2, "WebSSOToken"

    const-string v0, "request web sso token error.errorcode."

    invoke-static {p2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->printReadableUniqueCode()V

    .line 4
    iget-object p2, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy$a;->a:Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenDefaultCompatProxy$a;->a:Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V

    return-void
.end method
