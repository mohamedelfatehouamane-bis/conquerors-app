.class public Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "RelationshipFinder"


# instance fields
.field public a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

.field public b:Lcom/gpc/sdk/account/GPCSession;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->b:Lcom/gpc/sdk/account/GPCSession;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;)Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;
    .locals 4

    .line 64
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCodeInteger()I

    move-result p1

    const/16 v1, 0xfa0

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1770

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1388

    const-string v2, "20"

    const-string v3, "111703"

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1389

    if-eq p1, v1, :cond_0

    .line 81
    const-string p1, "111701"

    const-string v1, "10"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 83
    :cond_1
    invoke-static {v3, v2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1

    .line 84
    :cond_2
    const-string p1, "111702"

    const-string v1, "32"

    invoke-static {p1, v1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->b:Lcom/gpc/sdk/account/GPCSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getLoginType()Lcom/gpc/sdk/GPCSDKConstant$GPCLoginType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->b:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    :cond_0
    const-string v0, "20"

    const/16 v2, 0x12d

    const-string v3, "111119"

    invoke-static {v3, v0, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->a:Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;

    iget-object v0, v0, Lcom/gpc/sdk/account/socialcircle/GPCAcceptedNetwork;->name:Ljava/lang/String;

    .line 11
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 12
    iget-object v3, p0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->b:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSession;->getAccesskey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "access_key"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "m_game_id"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v3, "s_type"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v0, "b_key"

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    new-instance p1, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestUMSBuilder;

    const-string v0, "/public/GetMIDBy3rdIdBatch?short_code=1"

    invoke-direct {p1, v0}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestUMSBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1, v1}, Lcom/gpc/sdk/service/request/cgi/builder/GPCServiceRequestUMSBuilder;->heads(Ljava/util/Map;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v2}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->parameters(Ljava/util/HashMap;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    sget-object v0, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;->POST:Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;

    .line 20
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->method(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$RequestMethod;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    new-instance v0, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;

    invoke-direct {v0, p0, p2}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$a;-><init>(Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;)V

    .line 21
    invoke-virtual {p1, v0}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->requestFinishListener(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$GPCServiceRequestFinishListener;)Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/gpc/sdk/service/request/prefixe/GPCSDKServiceCall;

    invoke-direct {p2}, Lcom/gpc/sdk/service/request/prefixe/GPCSDKServiceCall;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest$Builder;->build()Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/service/request/prefixe/GPCServiceCallImpl;->call(Lcom/gpc/sdk/service/request/cgi/GPCServiceRequest;)V

    return-void
.end method

.method public find(Ljava/lang/String;Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->a(Ljava/lang/String;Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;)V

    return-void
.end method

.method public find(Ljava/util/List;Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder;->a(Ljava/lang/String;Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;)V

    return-void

    .line 16
    :cond_2
    :goto_1
    const-string p1, "20"

    const/16 v0, 0x12d

    const-string v1, "111119"

    invoke-static {v1, p1, v0}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/account/socialcircle/GPCAccountRelationshipFinder$GPCAccountRelationshipFinderListener;->onFindingFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method
