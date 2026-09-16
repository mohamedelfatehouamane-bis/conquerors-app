.class public Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->a(Ljava/lang/String;Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;

.field public final synthetic b:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;->b:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;

    iput-object p2, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;->a:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$ResponseExtraData;)V
    .locals 5

    const-string p3, "20"

    const-string v0, "shortErrCode:"

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "RelationshipFinder"

    if-eqz v1, :cond_0

    .line 2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "find thirdPlatformAccountIds request failed: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;->a:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;

    iget-object p3, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;->b:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;

    invoke-static {p3, p1}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->a(Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "find thirdPlatformAccountIds request : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    const-string v1, "shortErrCode"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {p1}, Lcom/gpc/util/safelang/Integer;->parseIntSafety(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "result"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "0"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;->b:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;

    invoke-static {v1}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->a(Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;)Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->relationship(Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;Ljava/lang/String;)Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->getRelationshipId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationship;->setUserId(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    iget-object p2, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;->a:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void

    .line 24
    :cond_2
    iget-object p2, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;->a:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;

    const-string v0, "111114"

    invoke-static {v0, p3, p1}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1, v2}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "find thirdPlatformAccountIds JSONException: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const-string p2, ""

    invoke-static {p2, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    iget-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;->a:Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;

    const-string p2, "111113"

    const/16 v0, 0x12d

    invoke-static {p2, p3, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2, v2}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
