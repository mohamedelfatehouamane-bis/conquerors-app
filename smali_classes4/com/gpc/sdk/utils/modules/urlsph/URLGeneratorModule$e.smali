.class public Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;
.super Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p5}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;-><init>(Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder;)V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;->d:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "CURRENCY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "PC_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "PAYLOAD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "TRADE_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p1, 0x0

    .line 15
    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 16
    :pswitch_0
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;->d:Ljava/lang/String;

    const-string v1, "currency"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 17
    :pswitch_1
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;->c:Ljava/lang/String;

    const-string v1, "pc_id"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 23
    :pswitch_2
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;->e:Ljava/lang/String;

    const-string v1, "payload"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    .line 24
    :pswitch_3
    new-instance p1, Landroid/util/Pair;

    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$e;->b:Ljava/lang/String;

    const-string v1, "trade_type"

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, p1}, Lcom/gpc/sdk/utils/modules/urlsph/URLGeneratorModule$URLPlaceHolder$OnResult;->OnComplete(Landroid/util/Pair;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x71868eab -> :sswitch_3
        -0x4189292 -> :sswitch_2
        0x4873ae7 -> :sswitch_1
        0x50f1e011 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
