.class public Lcom/gpc/sdk/misc/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/storage/GPCCDNUploader;


# static fields
.field public static final e:Ljava/lang/String; = "CDNUploaderImpl"


# instance fields
.field public a:Lcom/gpc/sdk/storage/service/StorageService;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getStorageService()Lcom/gpc/sdk/storage/service/StorageService;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/h;->a:Lcom/gpc/sdk/storage/service/StorageService;

    const-wide/16 v0, 0x0

    .line 271
    iput-wide v0, p0, Lcom/gpc/sdk/misc/h;->b:J

    .line 272
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/misc/h;->c:Ljava/lang/String;

    .line 273
    iput-object v0, p0, Lcom/gpc/sdk/misc/h;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 7

    const-string v0, "severTimestamp:"

    .line 52
    iget-wide v1, p0, Lcom/gpc/sdk/misc/h;->b:J

    const-wide/16 v3, 0x0

    const-string v5, "CDNUploaderImpl"

    cmp-long v6, v1, v3

    if-lez v6, :cond_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shawdowTimestamp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/gpc/sdk/misc/h;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-wide v0, p0, Lcom/gpc/sdk/misc/h;->b:J

    return-wide v0

    .line 57
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->isSynchronizedServerTime()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->sharedInstance()Lcom/gpc/sdk/utils/modules/ServerTimeModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/ServerTimeModule;->getSeverTimestamp()J

    move-result-wide v1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    .line 62
    :cond_1
    const-string v0, "without Async Server Time"

    invoke-static {v5, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 65
    const-string v1, ""

    invoke-static {v5, v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 69
    iget-object v0, p0, Lcom/gpc/sdk/misc/h;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CDNUploaderImpl"

    if-nez v0, :cond_0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "shawdowFileName:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gpc/sdk/misc/h;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/gpc/sdk/misc/h;->c:Ljava/lang/String;

    return-object p1

    .line 73
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "Upload error:"

    if-nez v2, :cond_1

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " do not exist!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is dir!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 92
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v2, ""

    if-eqz p1, :cond_3

    .line 93
    const-string p1, "userId is null!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v2

    .line 97
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 98
    new-instance v0, Lcom/gpc/util/MD5;

    invoke-direct {v0}, Lcom/gpc/util/MD5;-><init>()V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa

    invoke-static {v4}, Lcom/gpc/util/RandomUtils;->getRandomStringIncludeNumber(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/gpc/util/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x2

    if-lt v3, v4, :cond_4

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 105
    div-int/2addr v3, v5

    add-int/lit8 v6, v3, 0xa

    .line 106
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/gpc/util/RandomUtils;->getRandomStringIncludeLowCaseAndNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "part1:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v6, 0xe

    .line 114
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v6, v3

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "part2:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 123
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "xx"

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/gpc/util/RandomUtils;->getRandomStringIncludeNumber(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 127
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_6

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 130
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "part3:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v4, v3, :cond_7

    .line 135
    const-string p1, "Upload warning: Missing suffix for filename"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object v2, v3, v7

    aput-object p2, v3, v5

    const-string p2, "%s%s%s"

    invoke-static {p1, p2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 139
    :cond_7
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    aput-object v2, v3, v7

    aput-object p2, v3, v5

    aput-object p1, v3, v6

    const-string p1, "%s%s%s%s"

    invoke-static {v4, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 142
    :goto_2
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "desFileName:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(J)V
    .locals 0

    .line 144
    iput-wide p1, p0, Lcom/gpc/sdk/misc/h;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/gpc/sdk/misc/h;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDNUploaderImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "validity:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;->getDays()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "timestamp:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 47
    const-string p1, "400106"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p7, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/misc/h;->a:Lcom/gpc/sdk/storage/service/StorageService;

    invoke-virtual {p3}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;->getDays()I

    move-result v4

    new-instance v7, Lcom/gpc/sdk/misc/h$d;

    invoke-direct {v7, p0, p7}, Lcom/gpc/sdk/misc/h$d;-><init>(Lcom/gpc/sdk/misc/h;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/storage/service/StorageService;->uploadWithTimeValidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/gpc/sdk/storage/service/UploadListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDNUploaderImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "timestamp:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 33
    const-string p1, "400206"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-nez v0, :cond_1

    .line 37
    const-string p1, "session is null!"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string p1, "400207"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p6, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/misc/h;->a:Lcom/gpc/sdk/storage/service/StorageService;

    new-instance v6, Lcom/gpc/sdk/misc/h$c;

    invoke-direct {v6, p0, p6}, Lcom/gpc/sdk/misc/h$c;-><init>(Lcom/gpc/sdk/misc/h;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lcom/gpc/sdk/storage/service/StorageService;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/service/UploadListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 9

    move-object/from16 v0, p8

    .line 16
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 17
    const-string p1, "CDNUploaderImpl"

    const-string p2, "session is null!"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string p1, "400207"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 21
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/h;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v2, p2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 26
    const-string p1, "400106"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 29
    :cond_2
    iget-object p2, p0, Lcom/gpc/sdk/misc/h;->a:Lcom/gpc/sdk/storage/service/StorageService;

    invoke-virtual {p4}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;->getDays()I

    move-result v5

    new-instance v8, Lcom/gpc/sdk/misc/h$b;

    invoke-direct {v8, p0, v0}, Lcom/gpc/sdk/misc/h$b;-><init>(Lcom/gpc/sdk/misc/h;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    const-wide/16 v6, -0x1

    move-object v1, p1

    move-object v0, p2

    move-object v3, p3

    move-object v4, p5

    invoke-interface/range {v0 .. v8}, Lcom/gpc/sdk/storage/service/StorageService;->uploadWithTimeValidity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLcom/gpc/sdk/storage/service/UploadListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object p5

    if-nez p5, :cond_0

    .line 2
    const-string p1, "CDNUploaderImpl"

    const-string p2, "session is null!"

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string p1, "400207"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p7, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 6
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/h;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object v2, p2

    .line 10
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    const-string p1, "400206"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p7, p1}, Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/gpc/sdk/misc/h;->a:Lcom/gpc/sdk/storage/service/StorageService;

    new-instance v7, Lcom/gpc/sdk/misc/h$a;

    invoke-direct {v7, p0, p7}, Lcom/gpc/sdk/misc/h$a;-><init>(Lcom/gpc/sdk/misc/h;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    const-wide/16 v5, -0x1

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v7}, Lcom/gpc/sdk/storage/service/StorageService;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/service/UploadListener;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/h;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/misc/h;->d:Ljava/lang/String;

    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/gpc/sdk/misc/h;->d:Ljava/lang/String;

    return-void
.end method

.method public perform(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 17

    .line 1
    const-string v0, "CDNUploaderImpl"

    const-string v1, "perform"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getSign()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getShelfTime()Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getUniqueName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getSign()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getGameId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getTimestamp()J

    move-result-wide v6

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    return-void

    .line 6
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getUniqueName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getSign()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getShelfTime()Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getGameId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getTimestamp()J

    move-result-wide v14

    move-object/from16 v8, p0

    move-object/from16 v16, p2

    invoke-virtual/range {v8 .. v16}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getShelfTime()Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getUniqueName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getGameId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getTimestamp()J

    move-result-wide v12

    move-object/from16 v8, p0

    move-object/from16 v14, p2

    invoke-virtual/range {v8 .. v14}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getUniqueName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getShelfTime()Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getGameId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->getTimestamp()J

    move-result-wide v13

    move-object/from16 v8, p0

    move-object/from16 v15, p2

    invoke-virtual/range {v8 .. v15}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    return-void
.end method

.method public prepare(Lcom/gpc/sdk/storage/bean/GPCStorageFile;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/misc/h;->prepare(Lcom/gpc/sdk/storage/bean/GPCStorageFile;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lcom/gpc/sdk/storage/bean/GPCStorageFile;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
    .locals 10

    const-string v0, "CDNUploaderImpl"

    if-nez p1, :cond_0

    .line 2
    const-string p1, "prepare GPCStorageFile is null."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepare:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "days:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;->getDays()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    const-string v1, "validity days: null."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/h;->a()J

    move-result-wide v7

    .line 13
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getRealFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/sdk/misc/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->setFileName(Ljava/lang/String;)V

    .line 17
    :cond_2
    new-instance v2, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getRealFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getSignature()Ljava/lang/String;

    move-result-object v5

    move-object v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)V

    return-object v2
.end method

.method public prepare(Ljava/lang/String;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDNUploaderImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/misc/h;->prepare(Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepare:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDNUploaderImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "days:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;->getDays()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    const-string v0, "validity days: null."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_0
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/h;->a()J

    move-result-wide v6

    .line 28
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 29
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v5

    .line 30
    new-instance v2, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;

    move-object v3, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/bean/GPCStorageShelfTime;)V

    return-object v2
.end method

.method public upload(Lcom/gpc/sdk/storage/bean/GPCStorageFile;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 10

    const-string v0, "CDNUploaderImpl"

    if-nez p1, :cond_0

    .line 7
    const-string p1, "upload GPCStorageFile is null."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload GPCStorageFile :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "validity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;->getDays()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getRealFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getSignature()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v7, -0x1

    move-object v1, p0

    move-object v5, p2

    move-object v9, p3

    invoke-virtual/range {v1 .. v9}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    return-void
.end method

.method public upload(Lcom/gpc/sdk/storage/bean/GPCStorageFile;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 9

    const-string v0, "CDNUploaderImpl"

    if-nez p1, :cond_0

    .line 1
    const-string p1, "upload GPCStorageFile is null."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload GPCStorageFile :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getRealFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageFile;->getSignature()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v8, p2

    invoke-virtual/range {v1 .. v8}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v8, p3

    .line 19
    invoke-virtual/range {v1 .. v8}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    return-void
.end method

.method public upload(Ljava/lang/String;Lcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/gpc/sdk/misc/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gpc/sdk/storage/listener/GPCCDNUploaderListener;)V

    return-void
.end method
