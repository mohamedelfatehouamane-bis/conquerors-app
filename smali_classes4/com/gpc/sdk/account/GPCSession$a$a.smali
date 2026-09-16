.class public Lcom/gpc/sdk/account/GPCSession$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/GPCSession$a;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/gpc/sdk/account/GPCSession$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCSession$a;Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCSession$a$a;->c:Lcom/gpc/sdk/account/GPCSession$a;

    iput-object p2, p0, Lcom/gpc/sdk/account/GPCSession$a$a;->a:Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    iput-object p3, p0, Lcom/gpc/sdk/account/GPCSession$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCSession$a$a;->c:Lcom/gpc/sdk/account/GPCSession$a;

    iget-object v0, v0, Lcom/gpc/sdk/account/GPCSession$a;->a:Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;

    iget-object v1, p0, Lcom/gpc/sdk/account/GPCSession$a$a;->a:Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;

    iget-object v2, p0, Lcom/gpc/sdk/account/GPCSession$a$a;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionOnMainListener;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V

    return-void
.end method
