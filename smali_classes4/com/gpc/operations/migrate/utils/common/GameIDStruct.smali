.class public Lcom/gpc/operations/migrate/utils/common/GameIDStruct;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GameIDStruct"


# instance fields
.field public devicePlatformPart:Ljava/lang/String;

.field public envPart:Ljava/lang/String;

.field public gameId:Ljava/lang/String;

.field public gameProPart:Ljava/lang/String;

.field public languagePart:Ljava/lang/String;

.field public releasePlatformPart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->gameId:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x4

    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    .line 6
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->gameProPart:Ljava/lang/String;

    .line 8
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->languagePart:Ljava/lang/String;

    .line 10
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->releasePlatformPart:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->devicePlatformPart:Ljava/lang/String;

    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0xb

    if-ne v0, v6, :cond_1

    .line 18
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->gameProPart:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->languagePart:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->releasePlatformPart:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->devicePlatformPart:Ljava/lang/String;

    .line 26
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/common/GameIDStruct;->envPart:Ljava/lang/String;

    return-void

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal game Id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GameIDStruct"

    invoke-static {v0, p1}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
