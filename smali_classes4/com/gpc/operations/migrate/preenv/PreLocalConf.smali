.class public Lcom/gpc/operations/migrate/preenv/PreLocalConf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreLocalConf"


# instance fields
.field private preDebugProfile:Lcom/gpc/operations/migrate/preenv/PreDebugProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/gpc/operations/migrate/preenv/PreLocalConf;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "PreLocalConf"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "create LocalConf ,json is : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/preenv/PreLocalConf;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/preenv/PreLocalConf;-><init>()V

    .line 4
    invoke-static {p0}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->createFromJson(Ljava/lang/String;)Lcom/gpc/operations/migrate/preenv/PreDebugProfile;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gpc/operations/migrate/preenv/PreLocalConf;->setPreDebugProfile(Lcom/gpc/operations/migrate/preenv/PreDebugProfile;)V

    return-object v0

    .line 7
    :cond_0
    const-string p0, "json is null."

    invoke-static {v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getPreDebugProfile()Lcom/gpc/operations/migrate/preenv/PreDebugProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreLocalConf;->preDebugProfile:Lcom/gpc/operations/migrate/preenv/PreDebugProfile;

    return-object v0
.end method

.method public isPreDebugProfileError()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreLocalConf;->preDebugProfile:Lcom/gpc/operations/migrate/preenv/PreDebugProfile;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPreDebugProfile(Lcom/gpc/operations/migrate/preenv/PreDebugProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/preenv/PreLocalConf;->preDebugProfile:Lcom/gpc/operations/migrate/preenv/PreDebugProfile;

    return-void
.end method
