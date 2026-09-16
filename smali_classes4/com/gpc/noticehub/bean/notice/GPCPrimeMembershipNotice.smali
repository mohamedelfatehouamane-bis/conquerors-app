.class public Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;
.super Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCPrimeMembershipNotice"


# instance fields
.field private showEntry:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;-><init>()V

    return-void
.end method

.method public static parseJson(Ljava/lang/String;)Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;

    invoke-direct {v0}, Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v2, "notice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 4
    const-string v4, "show_entry"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 5
    invoke-virtual {v0, p0}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setRaw(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v2}, Lcom/gpc/noticehub/bean/notice/GPCUserNormalNotice;->setNotice(I)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;->setShowEntry(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 10
    const-string v0, "GPCPrimeMembershipNotice"

    const-string v1, "parseJson"

    invoke-static {v0, v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getShowEntry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;->showEntry:I

    return v0
.end method

.method public isShowEntry()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;->showEntry:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setShowEntry(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/noticehub/bean/notice/GPCPrimeMembershipNotice;->showEntry:I

    return-void
.end method
