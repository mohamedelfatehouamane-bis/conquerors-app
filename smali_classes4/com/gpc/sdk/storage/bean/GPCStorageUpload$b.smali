.class public Lcom/gpc/sdk/storage/bean/GPCStorageUpload$b;
.super Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
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
    .locals 10

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

    const-string v4, "HH"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 5
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 6
    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy"

    invoke-direct {v4, v5, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 9
    invoke-virtual {v4, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 10
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 12
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "MMdd"

    invoke-direct {v5, v6, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 13
    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 14
    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;->a:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    invoke-interface {v5}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/storage/protracted/%s/%s/%s/%s/%s/%s"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->b(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->b(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/gpc/sdk/storage/bean/GPCStorageUpload;->c(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v6

    const/4 v5, 0x1

    aput-object v8, v9, v5

    const/4 v5, 0x2

    aput-object v4, v9, v5

    const/4 v4, 0x3

    aput-object v0, v9, v4

    aput-object v2, v9, v7

    const/4 v0, 0x5

    aput-object p1, v9, v0

    invoke-static {v3, v1, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string v0, "GPCStorageUpload"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
