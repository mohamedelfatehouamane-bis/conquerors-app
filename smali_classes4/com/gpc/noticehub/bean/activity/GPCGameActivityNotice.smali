.class public Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCGameActivityNotice"


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/noticehub/bean/activity/GPCGameActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field private raw:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->items:Ljava/util/List;

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;

    invoke-direct {v0}, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;-><init>()V

    .line 2
    invoke-virtual {v0, p0}, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->setRaw(Ljava/lang/String;)V

    .line 3
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 4
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_1

    .line 5
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gpc/noticehub/bean/activity/GPCGameActivityItem;->parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/activity/GPCGameActivityItem;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 12
    const-string v0, "GPCGameActivityNotice"

    const-string v1, "parseJson"

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/noticehub/bean/activity/GPCGameActivityItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->items:Ljava/util/List;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/noticehub/bean/activity/GPCGameActivityItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->items:Ljava/util/List;

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->raw:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCGameActivityMessage{raw=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->raw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/noticehub/bean/activity/GPCGameActivityNotice;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
