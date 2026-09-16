.class public Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->setHomePageHidden(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$e;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iput-boolean p2, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$e;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$e;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$e;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, v0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnHome:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$e;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    iget-object v0, v0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->btnHome:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout$e;->b:Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;

    invoke-static {v1}, Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;->access$800(Lcom/gpc/sdk/utils/common/webview/CommonWebViewLayout;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setHomePageHidden"

    invoke-static {v1, v2, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
