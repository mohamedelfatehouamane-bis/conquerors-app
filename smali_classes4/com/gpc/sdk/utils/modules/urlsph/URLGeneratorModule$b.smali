.class public Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->getPaymentQrcodeWebURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/urlsph/OnGetReqeustURLResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/urlsph/OnGetReqeustURLResult;

.field public final synthetic b:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;Lcom/gpc/sdk/utils/modules/urlsph/OnGetReqeustURLResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$b;->b:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;

    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$b;->a:Lcom/gpc/sdk/utils/modules/urlsph/OnGetReqeustURLResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$b;->b:Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;->access$000(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;)Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/urlsph/URLPlaceholderItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    if-eqz v1, :cond_0

    .line 13
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$b;->a:Lcom/gpc/sdk/utils/modules/urlsph/OnGetReqeustURLResult;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/gpc/sdk/utils/modules/urlsph/OnGetReqeustURLResult;->OnComplete(Ljava/lang/String;)V

    return-void
.end method
