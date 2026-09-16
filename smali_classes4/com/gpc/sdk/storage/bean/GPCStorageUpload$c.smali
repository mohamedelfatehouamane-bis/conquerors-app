.class public Lcom/gpc/sdk/storage/bean/GPCStorageUpload$c;
.super Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;-><init>(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-static {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->a(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    const-string v1, "GMT-5:00"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "yyyyMMdd"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "HH"

    invoke-direct {v4, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 10
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;->a:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    invoke-interface {v4}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/storage/data_%sdays/%s/%s/%s.%s"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->d(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gpc/sdk/storage/bean/GPCStorageShelfTime;->getDays()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->b(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->c(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;

    move-result-object p1

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v4, 0x1

    aput-object v2, v6, v4

    const/4 v2, 0x2

    aput-object v0, v6, v2

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object p1, v6, v0

    invoke-static {v3, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 14
    const-string v0, "GPCStorageUpload"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
