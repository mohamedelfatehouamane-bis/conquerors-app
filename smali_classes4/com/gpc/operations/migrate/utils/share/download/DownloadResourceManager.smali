.class public Lcom/gpc/operations/migrate/utils/share/download/DownloadResourceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/share/download/DownloadResourceManager;->mapping:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/download/DownloadResourceManager;->mapping:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/utils/MD5;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/MD5;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/download/DownloadResourceManager;->mapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/utils/MD5;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/MD5;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/download/DownloadResourceManager;->mapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/download/DownloadResourceManager;->mapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/utils/MD5;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/MD5;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/gpc/operations/migrate/utils/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/download/DownloadResourceManager;->mapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
