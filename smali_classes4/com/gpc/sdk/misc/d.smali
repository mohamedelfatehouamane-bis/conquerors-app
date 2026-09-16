.class public Lcom/gpc/sdk/misc/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "AgreementSigningStateRecord"

.field public static final c:Ljava/lang/String; = "gpc.sdk.agreementsigning.operation.sync.device.state"

.field public static final d:Ljava/lang/String; = "gpc.sdk.agreementsigning.cmp.agree.items"

.field public static final e:Ljava/lang/String; = "gpc.sdk.agreementsigning.cmp.disagree.items"

.field public static final f:Ljava/lang/String; = "gpc.sdk.agreementsigning.operation.sync.user.state_"

.field public static final g:Ljava/lang/String; = "gpc.sdk.agreementsigning.agree.guardian.verification.state"

.field public static final h:Ljava/lang/String; = "gpc.sdk.agreementsigning.agree.policies.state"

.field public static final i:Ljava/lang/String; = "gpc.sdk.agreementsigning.agree.type"

.field public static final j:Ljava/lang/String; = "gpc.sdk.agreementsigning.is.presigned_"

.field public static final k:Ljava/lang/String; = "gpc.sdk.agreementsigning.agree.user.region"


# instance fields
.field public a:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/util/LocalStorage;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->SIGNING_STATUS_PROFILE:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc.sdk.agreementsigning.agree.guardian.verification.state"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;"
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gpc.sdk.agreementsigning.agree.policies.state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/misc/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "gpc.sdk.agreementsigning.agree.guardian.verification.state"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)V"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gpc.sdk.agreementsigning.agree.policies.state_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/misc/d;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gpc.sdk.agreementsigning.is.presigned_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)V"
        }
    .end annotation

    .line 4
    const-string v0, "gpc.sdk.agreementsigning.agree.policies.state"

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/misc/d;->b(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc.sdk.agreementsigning.operation.sync.device.state"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;"
        }
    .end annotation

    .line 35
    const-string v0, "gpc.sdk.agreementsigning.agree.policies.state"

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/misc/d;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAgreePoliciesState:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgreementSigningStateRecord"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 11
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    const-string v2, "getAgreePoliciesState"

    invoke-static {v1, v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "gpc.sdk.agreementsigning.agree.type"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)V"
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "AgreementSigningStateRecord"

    if-eqz p2, :cond_0

    .line 21
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 23
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 24
    const-string v4, "id"

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    const-string v4, "version"

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v4, "innerVersion"

    invoke-virtual {v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getInnerVersion()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAgreePoliciesState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 34
    const-string p2, "setAgreePoliciesState"

    invoke-static {v1, p2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gpc.sdk.agreementsigning.operation.sync.user.state_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/gpc/util/LocalStorage;->writeBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gpc.sdk.agreementsigning.cmp.agree.items"

    if-eqz p1, :cond_0

    .line 36
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc.sdk.agreementsigning.agree.type"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "gpc.sdk.agreementsigning.cmp.disagree.items"

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v2, ","

    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gpc.sdk.agreementsigning.operation.sync.user.state_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->keyExists(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v2, "gpc.sdk.agreementsigning.cmp.agree.items"

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gpc.sdk.agreementsigning.is.presigned_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v2, "gpc.sdk.agreementsigning.cmp.disagree.items"

    invoke-virtual {v1, v2}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_0
    return-object v0
.end method

.method public e(Ljava/lang/String;)Z
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gpc.sdk.agreementsigning.operation.sync.user.state_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc.sdk.agreementsigning.agree.user.region"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getUserRegion: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgreementSigningStateRecord"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUserRegion: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgreementSigningStateRecord"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc.sdk.agreementsigning.agree.user.region"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc.sdk.agreementsigning.cmp.agree.items"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->keyExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc.sdk.agreementsigning.cmp.disagree.items"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->keyExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc.sdk.agreementsigning.operation.sync.device.state"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->keyExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/d;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "gpc.sdk.agreementsigning.operation.sync.device.state"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
