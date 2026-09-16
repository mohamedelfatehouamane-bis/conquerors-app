.class public Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CODE_100:I = 0x1

.field private static final CODE_200:I = 0x2

.field private static final CODE_300:I = 0x4

.field private static final CODE_400:I = 0x8

.field private static final CODE_500:I = 0x10

.field public static final TAG:Ljava/lang/String; = "RemoteApi"


# instance fields
.field private filter:I

.field private off:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->off:I

    const/16 v0, 0x18

    .line 6
    iput v0, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->filter:I

    return-void
.end method

.method public static parseFromJson(Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;
    .locals 5

    const-string v0, "filter"

    const-string v1, "off"

    const-string v2, "remote_api"

    .line 1
    new-instance v3, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;

    invoke-direct {v3}, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->setOff(I)V

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v3, p0}, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->setFilter(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 13
    const-string v0, "RemoteApi"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/migrate/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-object v3
.end method


# virtual methods
.method public getFilter()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->filter:I

    return v0
.end method

.method public getOff()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->off:I

    return v0
.end method

.method public isOpen()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->off:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isValidResponseCode(I)Z
    .locals 4

    const/16 v0, 0x64

    const/16 v1, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, p1, :cond_1

    if-ge p1, v1, :cond_1

    .line 1
    iget p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->filter:I

    and-int/2addr p1, v3

    if-eqz p1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    const/16 v0, 0x12c

    if-gt v1, p1, :cond_4

    if-ge p1, v0, :cond_4

    if-ne p1, v1, :cond_2

    return v2

    .line 7
    :cond_2
    iget p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->filter:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    const/16 v1, 0x190

    if-gt v0, p1, :cond_6

    if-ge p1, v1, :cond_6

    .line 10
    iget p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->filter:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2

    :cond_6
    const/16 v0, 0x1f4

    if-gt v1, p1, :cond_8

    if-ge p1, v0, :cond_8

    .line 13
    iget p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->filter:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_7

    return v3

    :cond_7
    return v2

    :cond_8
    if-gt v0, p1, :cond_a

    const/16 v0, 0x258

    if-ge p1, v0, :cond_a

    .line 16
    iget p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->filter:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    return v3
.end method

.method public setFilter(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->filter:I

    return-void
.end method

.method public setOff(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/migrate/utils/modules/log/bean/RemoteApi;->off:I

    return-void
.end method
