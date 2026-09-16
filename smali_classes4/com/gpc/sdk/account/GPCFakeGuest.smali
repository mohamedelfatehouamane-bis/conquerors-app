.class public final Lcom/gpc/sdk/account/GPCFakeGuest;
.super Lcom/gpc/sdk/account/GPCGuest;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "GPCFakeGuest"


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/account/GPCGuest;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/account/GPCFakeGuest;->setDomain(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/account/GPCFakeGuest;->setSubject(Ljava/lang/String;)V

    return-void
.end method

.method public static quickCreate(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/account/GPCFakeGuest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/GPCFakeGuest;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/account/GPCFakeGuest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCFakeGuest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCGuest;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/gpc/sdk/account/GPCFakeGuest;->getReadableIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Source of identifier is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GPCFakeGuest"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/gpc/util/MD5;

    invoke-direct {v1}, Lcom/gpc/util/MD5;-><init>()V

    invoke-virtual {v1, v0}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/account/GPCGuest;->a:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "getDeviceRegisterId() return NULL"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCGuest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableIdentifier()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->getGuestDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/account/GPCFakeGuest;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/account/GPCFakeGuest;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v0, v4, v1

    const/4 v0, 0x3

    aput-object v3, v4, v0

    const-string v0, "%s.%s.%s.%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/GPCFakeGuest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "^[a-z]{2,5}\\.[a-z0-9\\-]+$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCFakeGuest;->b:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid domain with wrong format"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string p1, "GPCFakeGuest"

    const-string v0, "setIdentifier is not supported in FreshFakeGuest"

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-string v0, "^[a-z0-9\\-]+$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iput-object p1, p0, Lcom/gpc/sdk/account/GPCFakeGuest;->c:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Invalid subject with wrong format"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method
