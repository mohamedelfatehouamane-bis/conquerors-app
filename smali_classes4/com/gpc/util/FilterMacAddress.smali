.class public Lcom/gpc/util/FilterMacAddress;
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

.method public static filterIsInvalidMacAdress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/gpc/util/FilterMacAddress;->isInvalidMacAdress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static isInvalidMacAdress(Ljava/lang/String;)Z
    .locals 3

    .line 1
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    .line 8
    const-string v2, "00:DA:36:16:DE:EB"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "00:90:4C:C5:12:38"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "00:90:4C:C5:00:34"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "00:11:22:33:44:55"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "00:00:00:00:00:00"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "08:00:28:12:34:56"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "88:f4:88:00:00:01"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "DE:FA:CE:DE:FA:CE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "08:00:28:12:03:58"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "00:08:22:ba:b3:fb"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "38:16:d1:85:d0:a0"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "38:AA:3C:08:EA:55"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    sget-object v1, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v2, "10:A5:F1:83:C0:A0"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 22
    sget-object v0, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    const-string v1, "02:00:00:00:00:00"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_0
    sget-object v0, Lcom/gpc/util/FilterMacAddress;->list:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
