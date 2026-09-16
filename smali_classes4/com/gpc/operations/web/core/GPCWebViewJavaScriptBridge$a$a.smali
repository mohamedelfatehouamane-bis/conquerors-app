.class public Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a$a;->a:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a$a;->a:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;

    iget-object v0, v0, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$a;->b:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    invoke-virtual {v0, p1}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->sendToJs(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
