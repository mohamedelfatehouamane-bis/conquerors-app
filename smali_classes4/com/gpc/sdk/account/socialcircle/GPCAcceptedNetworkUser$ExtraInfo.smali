.class public Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtraInfo"
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "_version"


# instance fields
.field public a:I

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->b:Ljava/util/Map;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->b:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->c:Ljava/util/Map;

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 11
    iput p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->a:I

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "At least version value is greater than 2!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static reservedVersion1(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;

    invoke-direct {v0}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;-><init>()V

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->a(I)V

    .line 5
    const-string v1, "first_name"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string p0, "last_name"

    invoke-virtual {v0, p0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static reservedVersion2(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/util/Sex;)Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;

    invoke-direct {v0}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;-><init>()V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->a(I)V

    .line 5
    const-string v1, "first_name"

    invoke-virtual {v0, v1, p0}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    const-string p0, "last_name"

    invoke-virtual {v0, p0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sex"

    invoke-virtual {v0, p1, p0}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 14
    const-string v3, "GPCAcceptedNetworkUser"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->a(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "_version"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->b:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 7
    iget-object v4, p0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 8
    invoke-virtual {p0, v4}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser$ExtraInfo;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    .line 11
    :try_start_0
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 13
    const-string v4, "GPCAcceptedNetworkUser"

    invoke-static {v4, v2, v3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
