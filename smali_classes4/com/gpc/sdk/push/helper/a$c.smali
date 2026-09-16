.class public Lcom/gpc/sdk/push/helper/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/push/helper/ImageDownloadHelper$OnDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/push/helper/a;->b(Landroid/content/Context;Lcom/gpc/sdk/push/helper/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/gpc/sdk/push/helper/a$e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/gpc/sdk/push/helper/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/push/helper/a$c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/gpc/sdk/push/helper/a$c;->b:Lcom/gpc/sdk/push/helper/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/push/helper/a$c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/gpc/sdk/push/helper/a$c;->b:Lcom/gpc/sdk/push/helper/a$e;

    invoke-static {p1, v0}, Lcom/gpc/sdk/push/helper/a;->f(Landroid/content/Context;Lcom/gpc/sdk/push/helper/a$e;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/gpc/sdk/push/helper/ImageDownloadHelper;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/push/helper/a$c;->b:Lcom/gpc/sdk/push/helper/a$e;

    iput-object p1, v0, Lcom/gpc/sdk/push/helper/a$e;->d:Landroid/graphics/Bitmap;

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/push/helper/a$c;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/gpc/sdk/push/helper/a;->a(Landroid/content/Context;Lcom/gpc/sdk/push/helper/a$e;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/push/helper/a$c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/gpc/sdk/push/helper/a$c;->b:Lcom/gpc/sdk/push/helper/a$e;

    invoke-static {p1, v0}, Lcom/gpc/sdk/push/helper/a;->f(Landroid/content/Context;Lcom/gpc/sdk/push/helper/a$e;)V

    return-void
.end method
