.class public Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/storage/bean/GPCStorageUpload$b;,
        Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;,
        Lcom/gpc/sdk/storage/bean/GPCStorageUpload$c;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/String; = "GPCStorageUpload"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

.field public g:Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->d:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->e:J

    .line 6
    iput-object p6, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->f:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

    const-string p1, "statics-global"

    if-nez p6, :cond_0

    .line 9
    new-instance p2, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$b;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getStaticsUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$b;-><init>(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V

    iput-object p2, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->g:Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;

    return-void

    .line 11
    :cond_0
    new-instance p2, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$c;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getStaticsUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$c;-><init>(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V

    iput-object p2, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->g:Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->a:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->b:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->c:Ljava/lang/String;

    .line 16
    iput-object p4, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->d:Ljava/lang/String;

    .line 17
    iput-wide p5, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->e:J

    .line 18
    iput-object p7, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->f:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

    const-string p1, "statics-global"

    if-nez p7, :cond_0

    .line 21
    new-instance p2, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$b;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getStaticsUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$b;-><init>(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V

    iput-object p2, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->g:Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;

    return-void

    .line 23
    :cond_0
    new-instance p2, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$c;

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getStaticsUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$c;-><init>(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V

    iput-object p2, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->g:Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->e:J

    return-wide v0
.end method

.method public static synthetic b(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic d(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->f:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

    return-object p0
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getShelfTime()Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->f:Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

    return-object v0
.end method

.method public getSign()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->e:J

    return-wide v0
.end method

.method public getUniqueName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->b:Ljava/lang/String;

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->g:Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;->a(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
