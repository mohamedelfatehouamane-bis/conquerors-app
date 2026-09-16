.class public Lcom/gpc/util/FilterAndroidId;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

.method public static filterIsInvalidAndroidId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/gpc/util/FilterAndroidId;->isInvalidAndroidId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static isInvalidAndroidId(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/util/FilterAndroidId;->list:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/gpc/util/FilterAndroidId;->list:Ljava/util/List;

    .line 3
    const-string v1, "000000000000000"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    sget-object v0, Lcom/gpc/util/FilterAndroidId;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
