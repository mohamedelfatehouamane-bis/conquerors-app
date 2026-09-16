.class public Lcom/gpc/operations/utils/SDKVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/utils/SDKVersion$b;,
        Lcom/gpc/operations/utils/SDKVersion$a;,
        Lcom/gpc/operations/utils/SDKVersion$c;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SDKVersion"


# instance fields
.field protected versionCode:I

.field protected versionName:Ljava/lang/String;

.field private versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/utils/SDKVersion;->versionName:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/gpc/operations/utils/SDKVersion;->versionCode:I

    .line 4
    invoke-direct {p0}, Lcom/gpc/operations/utils/SDKVersion;->parse()V

    return-void
.end method

.method private parse()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Origin:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/utils/SDKVersion;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDKVersion"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionName:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "v"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionName:Ljava/lang/String;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "beta"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "alpha"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    const-string v0, "ProductionRelease"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/gpc/operations/utils/SDKVersion$c;

    iget-object v2, p0, Lcom/gpc/operations/utils/SDKVersion;->versionName:Ljava/lang/String;

    iget v3, p0, Lcom/gpc/operations/utils/SDKVersion;->versionCode:I

    invoke-direct {v0, v2, v3}, Lcom/gpc/operations/utils/SDKVersion$c;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    const-string v0, "PreRelease"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/gpc/operations/utils/SDKVersion$b;

    iget-object v2, p0, Lcom/gpc/operations/utils/SDKVersion;->versionName:Ljava/lang/String;

    iget v3, p0, Lcom/gpc/operations/utils/SDKVersion;->versionCode:I

    invoke-direct {v0, v2, v3}, Lcom/gpc/operations/utils/SDKVersion$b;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    .line 20
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Codebase:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    invoke-virtual {v2}, Lcom/gpc/operations/utils/SDKVersion$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "InProduction:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    invoke-virtual {v2}, Lcom/gpc/operations/utils/SDKVersion$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "UserAgentComment:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    invoke-virtual {v2}, Lcom/gpc/operations/utils/SDKVersion$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Distribution:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    invoke-virtual {v2}, Lcom/gpc/operations/utils/SDKVersion$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCodebaseVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    invoke-virtual {v0}, Lcom/gpc/operations/utils/SDKVersion$a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistributionVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    invoke-virtual {v0}, Lcom/gpc/operations/utils/SDKVersion$a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeneralName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/utils/SDKVersion;->getInProductionVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInProductionVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    invoke-virtual {v0}, Lcom/gpc/operations/utils/SDKVersion$a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInProductionVersionNameWithV()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    invoke-virtual {v1}, Lcom/gpc/operations/utils/SDKVersion$a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentCommentVersionName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/utils/SDKVersion;->versionNameStruct:Lcom/gpc/operations/utils/SDKVersion$a;

    invoke-virtual {v0}, Lcom/gpc/operations/utils/SDKVersion$a;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
