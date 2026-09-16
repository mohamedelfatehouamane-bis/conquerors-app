.class public abstract Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "URLPlaceHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;
    }
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;->a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$d;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;->getParams()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ""

    const-string v4, "URLGeneratorModule"

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    :try_start_0
    new-instance v5, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$a;

    invoke-direct {v5, p0, v0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$a;-><init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;Ljava/util/List;)V

    invoke-virtual {p0, v2, v5}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;->a(Ljava/lang/String;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 15
    invoke-static {v4, v3, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;->a:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;

    if-eqz v1, :cond_1

    .line 21
    new-instance v2, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$b;

    invoke-direct {v2, p0, v0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$b;-><init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;Ljava/util/List;)V

    invoke-virtual {v1, p1, v2}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;->a(Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$d;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 31
    invoke-static {v4, v3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_1
    :goto_1
    invoke-interface {p2, v0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$d;->a(Ljava/util/List;)V

    return-void
.end method

.method public abstract a(Ljava/lang/String;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;)V
.end method
