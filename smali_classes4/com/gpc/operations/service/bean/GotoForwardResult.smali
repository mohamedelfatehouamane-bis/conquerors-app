.class public Lcom/gpc/operations/service/bean/GotoForwardResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GotoForwardResult"


# instance fields
.field private mode:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/gpc/operations/service/bean/GotoForwardResult;
    .locals 4

    .line 1
    const-string v0, "mode"

    const-string v1, "type"

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Lcom/gpc/operations/service/bean/GotoForwardResult;

    invoke-direct {p0}, Lcom/gpc/operations/service/bean/GotoForwardResult;-><init>()V

    .line 3
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/gpc/operations/service/bean/GotoForwardResult;->type:Ljava/lang/String;

    .line 6
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/gpc/operations/service/bean/GotoForwardResult;->mode:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object p0

    :catch_0
    move-exception p0

    .line 11
    const-string v0, "GotoForwardResult"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/service/bean/GotoForwardResult;->mode:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/bean/GotoForwardResult;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/service/bean/GotoForwardResult;->mode:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/bean/GotoForwardResult;->type:Ljava/lang/String;

    return-void
.end method
