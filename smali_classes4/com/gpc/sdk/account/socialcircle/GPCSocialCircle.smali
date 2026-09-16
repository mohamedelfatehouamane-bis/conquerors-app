.class public Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "GPCSocialCircle"

.field public static final d:Ljava/lang/String; = "social_circle_"

.field public static final e:Ljava/lang/String; = "last_upload_users_"

.field public static final f:Ljava/lang/String; = "find_people_player_may_know_etag"

.field public static final g:Ljava/lang/String; = "find_people_player_may_know_value"

.field public static final h:I = 0x64

.field public static final i:I = 0x65

.field public static final j:I = 0x66

.field public static final k:I = 0x67

.field public static final l:I = 0x68


# instance fields
.field public a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

.field public b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatDefaultProxy;

    invoke-direct {v0}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatDefaultProxy;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/factory/Factory;->serviceFactory()Lcom/gpc/sdk/utils/factory/IServiceFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/sdk/utils/factory/IServiceFactory;->createService()Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;)Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->b(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Ljava/util/ArrayList;Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Ljava/util/ArrayList;Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)V

    return-void
.end method

.method public static synthetic b(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 4

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 41
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    const-string v2, "GPCSocialCircle"

    invoke-static {v2, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0xfa0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1770

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1388

    const-string v2, "20"

    const-string v3, "112009"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1389

    if-eq p1, v1, :cond_0

    .line 61
    const-string p1, "112007"

    const-string v1, "10"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 62
    :cond_0
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 63
    :cond_1
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 64
    :cond_2
    const-string p1, "112008"

    const-string v1, "32"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;

    .line 8
    iget-object v2, v1, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->uniqueId:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    const-string p2, "GPCSocialCircle"

    const-string v1, ""

    invoke-static {p2, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/util/ArrayList;Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;",
            ">;",
            "Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;",
            ")V"
        }
    .end annotation

    const-string v0, "last_upload_users_"

    const-string v1, "social_circle_"

    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 27
    :try_start_0
    iget-object v2, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    new-instance v2, Lorg/json/JSONArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p2, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[]"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;

    .line 30
    iget-object v3, v3, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->uniqueId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    const-string p2, "GPCSocialCircle"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "last_upload_users_"

    const-string v1, "social_circle_"

    const/4 v2, 0x0

    .line 15
    :try_start_0
    iget-object v3, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v3}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 16
    new-instance v3, Lorg/json/JSONArray;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[]"

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 19
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    const-string p2, "GPCSocialCircle"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return v2
.end method

.method public final b(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    const-string v2, "GPCSocialCircle"

    invoke-static {v2, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    const/16 v1, 0xfa0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1770

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1388

    const-string v2, "20"

    const-string v3, "112003"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1389

    if-eq p1, v1, :cond_0

    .line 27
    const-string p1, "112001"

    const-string v1, "10"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 28
    :cond_0
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    goto :goto_1

    .line 30
    :cond_2
    const-string p1, "112002"

    const-string v1, "32"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public findFriendsComeFrom(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;

    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;-><init>(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)V

    return-object v0
.end method

.method public findPeoplePlayerMayKnow(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "social_circle_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    const-string v1, "find_people_player_may_know_etag"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "valueETag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCSocialCircle"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v0}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v0

    const-string v3, "access_token"

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v2, "timestamp"

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_id"

    invoke-virtual {v5, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "access_token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v3}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&device_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    .line 12
    invoke-interface {v3}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&timestamp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rawData:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sign UP:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/gpc/util/MD5;

    invoke-direct {v3}, Lcom/gpc/util/MD5;-><init>()V

    invoke-virtual {v3, v0}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v2, Lcom/gpc/util/MD5;

    invoke-direct {v2}, Lcom/gpc/util/MD5;-><init>()V

    invoke-virtual {v2, v0}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sign:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v1, "sign"

    invoke-virtual {v5, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v3, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v1

    const-string v2, "friend"

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getGeneralUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object v1

    invoke-interface {v1}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/suggest/get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v7}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v8, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;

    invoke-direct {v8, p0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$b;-><init>(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;)V

    invoke-interface/range {v3 .. v8}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->getRequest(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GetRequestWithETagListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void
.end method

.method public registerFriends(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;Ljava/util/ArrayList;Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;",
            ">;",
            "Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;",
            ")V"
        }
    .end annotation

    const-string v0, "10"

    if-eqz p1, :cond_3

    .line 1
    iget-object v1, p1, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    invoke-virtual {p0, v1, p2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 12
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v1, p1, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    const-string v2, "timestamp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v2, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v2}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_id"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-static {p2}, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetworkUser;->convertArrayToJson(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    .line 20
    const-string v3, "platform_friends"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "access_token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    invoke-interface {v4}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->playerSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&device_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    .line 23
    invoke-interface {v4}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&platform_friends="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&timestamp="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&type="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rawData:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPCSocialCircle"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sign UP:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/gpc/util/MD5;

    invoke-direct {v4}, Lcom/gpc/util/MD5;-><init>()V

    invoke-virtual {v4, v1}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v2, Lcom/gpc/util/MD5;

    invoke-direct {v2}, Lcom/gpc/util/MD5;-><init>()V

    invoke-virtual {v2, v1}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "sign:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->b:Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v3

    const-string v4, "friend"

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getGeneralUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object v3

    invoke-interface {v3}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/platform_friend/add"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;

    invoke-direct {v3}, Lcom/gpc/sdk/service/request/general/GPCDefaultRequestHeaders;-><init>()V

    new-instance v4, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;

    invoke-direct {v4, p0, p2, p1, p3}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle$a;-><init>(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;Ljava/util/ArrayList;Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;)V

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/gpc/sdk/service/request/general/ILegacyServiceClient;->postRequest(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;)Lcom/gpc/sdk/service/network/http/HTTPCall;

    return-void

    .line 34
    :cond_2
    :goto_0
    const-string p1, "112006"

    const/16 p2, 0x65

    invoke-static {p1, v0, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onRegisteringFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 35
    :cond_3
    :goto_1
    const-string p1, "112005"

    const/16 p2, 0x64

    invoke-static {p1, v0, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleListener;->onRegisteringFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public setProxy(Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCSocialCircle;->a:Lcom/gpc/sdk/account/socialcircle/GPCSocialCircleCompatProxy;

    return-void
.end method
