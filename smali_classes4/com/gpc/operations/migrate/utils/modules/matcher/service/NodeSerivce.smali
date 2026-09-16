.class public Lcom/gpc/operations/migrate/utils/modules/matcher/service/NodeSerivce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/matcher/service/IURLService;


# instance fields
.field protected cdnType:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

.field protected originalServiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/SDKConstant$CDNType;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NodeSerivce;->cdnType:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NodeSerivce;->originalServiceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public service()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NodeSerivce$a;->a:[I

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NodeSerivce;->cdnType:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NodeSerivce;->originalServiceName:Ljava/lang/String;

    return-object v0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NodeSerivce;->originalServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-snd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "standby-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NodeSerivce;->originalServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/modules/matcher/service/NodeSerivce;->originalServiceName:Ljava/lang/String;

    return-object v0
.end method
