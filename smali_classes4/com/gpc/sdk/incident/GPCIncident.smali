.class public Lcom/gpc/sdk/incident/GPCIncident;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/io/File;

.field public i:Ljava/lang/String;

.field public j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePlatform()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->e:I

    return v0
.end method

.method public getExtraFields1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->j:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/gpc/util/CollectionUtils;->mapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraFields2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->k:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/gpc/util/CollectionUtils;->mapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraFields3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->l:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/gpc/util/CollectionUtils;->mapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraFields4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->m:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/gpc/util/CollectionUtils;->mapToJsonString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getGid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getPostFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->h:Ljava/io/File;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getVcsVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/incident/GPCIncident;->i:Ljava/lang/String;

    return-object v0
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->b:Ljava/lang/String;

    return-void
.end method

.method public setDeviceMode(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->c:Ljava/lang/String;

    return-void
.end method

.method public setDevicePlatform(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->e:I

    return-void
.end method

.method public setExtraFields1(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->j:Ljava/util/HashMap;

    return-void
.end method

.method public setExtraFields2(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->k:Ljava/util/HashMap;

    return-void
.end method

.method public setExtraFields3(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->l:Ljava/util/HashMap;

    return-void
.end method

.method public setExtraFields4(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->m:Ljava/util/HashMap;

    return-void
.end method

.method public setGameVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->f:Ljava/lang/String;

    return-void
.end method

.method public setGid(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->a:Ljava/lang/String;

    return-void
.end method

.method public setPostFile(Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->h:Ljava/io/File;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->g:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->d:Ljava/lang/String;

    return-void
.end method

.method public setVcsVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/incident/GPCIncident;->i:Ljava/lang/String;

    return-void
.end method
