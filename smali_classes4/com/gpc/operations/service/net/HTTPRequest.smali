.class public final Lcom/gpc/operations/service/net/HTTPRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/service/net/HTTPRequest$Companion;
    }
.end annotation


# static fields
.field private static final BOUNDARY:Ljava/lang/String;

.field private static final CONTENT_TYPE:Ljava/lang/String;

.field private static final CRLF:Ljava/lang/String;

.field public static final Companion:Lcom/gpc/operations/service/net/HTTPRequest$Companion;

.field private static final JSON_DATA:Ljava/lang/String;

.field private static final MULTIPART_FORM_DATA:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TWO_HYPHENS:Ljava/lang/String;


# instance fields
.field private final MAX_SIZE_OF_PART:I

.field private connection:Ljava/net/HttpURLConnection;

.field private inSampleSize:I

.field private quality:I

.field private ua:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/service/net/HTTPRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->Companion:Lcom/gpc/operations/service/net/HTTPRequest$Companion;

    .line 1
    const-string v0, "HTTPRequest"

    sput-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    .line 3
    const-string v0, "Content-Type"

    sput-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->CONTENT_TYPE:Ljava/lang/String;

    .line 4
    const-string v0, "multipart/form-data"

    sput-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->MULTIPART_FORM_DATA:Ljava/lang/String;

    .line 5
    const-string v0, "application/json"

    sput-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->JSON_DATA:Ljava/lang/String;

    .line 6
    const-string v0, "\r\n"

    sput-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->CRLF:Ljava/lang/String;

    .line 7
    const-string v0, "--"

    sput-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->TWO_HYPHENS:Ljava/lang/String;

    .line 8
    const-string v0, "--------operationssdk"

    sput-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/operations/service/net/HTTPRequest;->ua:Ljava/lang/String;

    const/high16 v0, 0x500000

    .line 199
    iput v0, p0, Lcom/gpc/operations/service/net/HTTPRequest;->MAX_SIZE_OF_PART:I

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final createPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request post:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;

    iput-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 5
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 6
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 7
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x3a98

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 8
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 10
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "Connection"

    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "Cache-Control"

    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string p2, "Content-Type"

    invoke-virtual {p1, p2, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->ua:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/gpc/operations/service/net/HTTPRequest;->ua:Ljava/lang/String;

    const-string p3, "User-Agent"

    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 17
    invoke-interface {p5}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 18
    invoke-interface {p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 20
    iget-object p3, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p3, p2, p4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method private final getPartData(Landroid/content/Context;ILcom/gpc/operations/service/net/MultipartFormDataFile;)[B
    .locals 6

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/operations/service/net/HTTPRequest;->getPartDataWithUri(Landroid/content/Context;ILcom/gpc/operations/service/net/MultipartFormDataFile;)[B

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-interface {p3}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    iget v1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->MAX_SIZE_OF_PART:I

    new-array v1, v1, [B

    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, v0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget v0, p0, Lcom/gpc/operations/service/net/HTTPRequest;->MAX_SIZE_OF_PART:I

    mul-int v0, v0, p2

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    :goto_0
    move-object v1, v2

    goto :goto_1

    .line 12
    :cond_1
    iget v2, p0, Lcom/gpc/operations/service/net/HTTPRequest;->MAX_SIZE_OF_PART:I

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    new-array v2, v0, [B

    const/4 v4, 0x0

    .line 15
    invoke-static {v1, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 27
    :goto_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 28
    :goto_2
    :try_start_2
    invoke-direct {p0, p1, p2, p3}, Lcom/gpc/operations/service/net/HTTPRequest;->getPartDataWithUri(Landroid/content/Context;ILcom/gpc/operations/service/net/MultipartFormDataFile;)[B

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_4

    if-eqz v2, :cond_3

    .line 35
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    return-object p1

    .line 36
    :cond_4
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    move-object v3, v2

    :goto_4
    if-eqz v3, :cond_5

    .line 41
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 42
    :cond_5
    throw p1
.end method

.method private final getPartDataWithUri(Landroid/content/Context;ILcom/gpc/operations/service/net/MultipartFormDataFile;)[B
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-interface {p3}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUri()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    .line 2
    iget p3, p0, Lcom/gpc/operations/service/net/HTTPRequest;->MAX_SIZE_OF_PART:I

    new-array v0, p3, [B

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    mul-int p2, p2, p3

    int-to-long p2, p2

    .line 5
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 6
    iget p2, p0, Lcom/gpc/operations/service/net/HTTPRequest;->MAX_SIZE_OF_PART:I

    const/4 p3, 0x0

    invoke-virtual {p1, v0, p3, p2}, Ljava/io/InputStream;->read([BII)I

    move-result p2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 8
    :cond_0
    iget v1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->MAX_SIZE_OF_PART:I

    if-ne p2, v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    new-array v1, p2, [B

    .line 11
    invoke-static {v0, p3, v1, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 17
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p2

    :cond_2
    return-object v1
.end method

.method private final processReponse(Ljava/net/HttpURLConnection;Lcom/gpc/operations/service/net/HTTPResponseListener;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12b

    if-le v1, v2, :cond_0

    .line 3
    sget-object v1, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "post responseCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 v1, 0x42c80000    # 100.0f

    .line 5
    invoke-interface {p2, v1}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onProgress(F)V

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "response:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 10
    const-string v0, "`in`"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/gpc/operations/service/net/HTTPRequest;->readStream(Ljava/io/InputStream;)[B

    move-result-object p1

    .line 11
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "defaultCharset()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 12
    invoke-interface {p2, v1}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onResponse(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "NetWork error!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method private final readStream(Ljava/io/InputStream;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 2
    new-array v1, v1, [B

    .line 4
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 9
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    const-string v0, "outSteam.toByteArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final transform(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/gpc/operations/utils/URLEncodeHelperKt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 17
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rawParam.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final writeFormData(Ljava/io/DataOutputStream;Ljava/util/Map;Lcom/gpc/operations/service/net/HTTPResponseListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/service/net/HTTPResponseListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p3, v0}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onProgress(F)V

    .line 2
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-direct {p0, p2}, Lcom/gpc/operations/service/net/HTTPRequest;->transform(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const/high16 p1, 0x42be0000    # 95.0f

    .line 5
    invoke-interface {p3, p1}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onProgress(F)V

    return-void
.end method

.method private final writeMultipartFormData(Landroid/content/Context;Ljava/io/DataOutputStream;Ljava/util/Map;Ljava/util/Map;JLcom/gpc/operations/service/net/HTTPResponseForFileUploadListener;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/DataOutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/gpc/operations/service/net/MultipartFormDataFile;",
            ">;J",
            "Lcom/gpc/operations/service/net/HTTPResponseForFileUploadListener;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    const/4 v4, 0x0

    .line 1
    invoke-interface {v3, v4}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onProgress(F)V

    const/16 v4, 0x22

    const-string v5, "Content-Disposition: form-data; name=\""

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 7
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/gpc/operations/service/net/HTTPRequest;->TWO_HYPHENS:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/gpc/operations/service/net/HTTPRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/gpc/operations/service/net/HTTPRequest;->CRLF:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    const-string v9, "this as java.lang.String).getBytes(charset)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v8, v6

    :goto_1
    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    .line 12
    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x41200000    # 10.0f

    .line 16
    invoke-interface {v3, v1}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onProgress(F)V

    if-eqz v2, :cond_9

    .line 20
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 21
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42aa0000    # 85.0f

    div-float/2addr v8, v7

    .line 23
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 24
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 25
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gpc/operations/service/net/MultipartFormDataFile;

    if-eqz v10, :cond_2

    invoke-interface {v10}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_2
    move-object v10, v6

    :goto_3
    const/4 v11, 0x0

    if-eqz v10, :cond_3

    const/4 v12, 0x2

    .line 27
    const-string v13, ".jpeg"

    invoke-static {v10, v13, v11, v12, v6}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 33
    :cond_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/gpc/operations/service/net/HTTPRequest;->TWO_HYPHENS:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/gpc/operations/service/net/HTTPRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/gpc/operations/service/net/HTTPRequest;->CRLF:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 35
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v14, "\";filename=\""

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 37
    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 41
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Content-Type: image/jpeg"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, v13}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 46
    :try_start_0
    sget-object v14, Lcom/gpc/operations/service/net/HTTPRequest;->Companion:Lcom/gpc/operations/service/net/HTTPRequest$Companion;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/gpc/operations/service/net/MultipartFormDataFile;

    if-eqz v10, :cond_4

    invoke-interface {v10}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v16, v10

    goto :goto_4

    :cond_4
    move-object/from16 v16, v6

    .line 47
    :goto_4
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/gpc/operations/service/net/MultipartFormDataFile;

    if-eqz v9, :cond_5

    invoke-interface {v9}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getUri()Landroid/net/Uri;

    move-result-object v9

    move-object/from16 v17, v9

    goto :goto_5

    :cond_5
    move-object/from16 v17, v6

    .line 48
    :goto_5
    invoke-static/range {v17 .. v17}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v15, p1

    move-wide/from16 v18, p5

    invoke-virtual/range {v14 .. v19}, Lcom/gpc/operations/service/net/HTTPRequest$Companion;->compressImage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;J)Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;

    move-result-object v9

    .line 49
    invoke-virtual {v9}, Lcom/gpc/operations/service/net/HTTPRequest$Companion$CompressImageResult;->getStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v9}, Ljava/io/InputStream;->available()I

    move-result v10

    const/16 v12, 0x800

    .line 53
    new-array v12, v12, [B

    const/4 v13, 0x0

    .line 55
    :goto_6
    invoke-virtual {v9, v12}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_6

    .line 56
    invoke-virtual {v0, v12, v11, v14}, Ljava/io/DataOutputStream;->write([BII)V

    add-int/2addr v13, v14

    int-to-float v14, v13

    const/high16 v15, 0x3f800000    # 1.0f

    mul-float v14, v14, v15

    int-to-float v15, v10

    div-float/2addr v14, v15

    mul-float v14, v14, v8

    add-float/2addr v14, v1

    .line 58
    invoke-interface {v3, v14}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onProgress(F)V

    goto :goto_6

    .line 63
    :cond_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 64
    sget-object v9, Lcom/gpc/operations/service/net/HTTPRequest;->CRLF:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "37926"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    :cond_7
    invoke-interface {v3, v0}, Lcom/gpc/operations/service/net/HTTPResponseForFileUploadListener;->onFileException(Ljava/lang/String;)V

    return v11

    .line 69
    :cond_8
    throw v0

    .line 78
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/gpc/operations/service/net/HTTPRequest;->TWO_HYPHENS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gpc/operations/service/net/HTTPRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    sget-object v2, Lcom/gpc/operations/service/net/HTTPRequest;->CRLF:Ljava/lang/String;

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/HTTPRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    return-void
.end method

.method public final get(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/service/net/HTTPResponseListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/service/net/HTTPResponseListener;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 9
    invoke-static {v2}, Lcom/gpc/operations/utils/URLEncodeHelperKt;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    const/4 v1, 0x1

    if-le p3, v1, :cond_1

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    sub-int/2addr p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 22
    :cond_1
    new-instance p3, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 23
    sget-object p1, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type java.net.HttpURLConnection"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/net/HttpURLConnection;

    if-eqz p2, :cond_2

    .line 26
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p3

    if-lez p3, :cond_2

    .line 27
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    .line 28
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 29
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 34
    :cond_2
    iget-object p2, p0, Lcom/gpc/operations/service/net/HTTPRequest;->ua:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 35
    const-string p2, "User-Agent"

    iget-object p3, p0, Lcom/gpc/operations/service/net/HTTPRequest;->ua:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_3
    sget-object p2, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    .line 41
    invoke-direct {p0, p1, p4}, Lcom/gpc/operations/service/net/HTTPRequest;->processReponse(Ljava/net/HttpURLConnection;Lcom/gpc/operations/service/net/HTTPResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    invoke-interface {p4, p1}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public final getMAX_SIZE_OF_PART()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/service/net/HTTPRequest;->MAX_SIZE_OF_PART:I

    return v0
.end method

.method public final post(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/service/net/MultipartFormDataFile;Lcom/gpc/operations/service/net/HTTPResponseForFilePartsUploadListener;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/service/net/MultipartFormDataFile;",
            "Lcom/gpc/operations/service/net/HTTPResponseForFilePartsUploadListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    const-string v9, "message"

    const-string v10, "index"

    const-string v2, "partSize:"

    const-string v3, "fileName:"

    const-string v4, "fileSize:"

    const-string v5, "context"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "url"

    move-object/from16 v6, p2

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "dataFile"

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "responseListener"

    invoke-static {v8, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :try_start_0
    invoke-interface {v7}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getSize()J

    move-result-wide v11

    .line 17
    invoke-interface {v7}, Lcom/gpc/operations/service/net/MultipartFormDataFile;->getName()Ljava/lang/String;

    move-result-object v13

    .line 18
    sget-object v5, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget v3, v1, Lcom/gpc/operations/service/net/HTTPRequest;->MAX_SIZE_OF_PART:I

    int-to-long v3, v3

    div-long v14, v11, v3

    .line 22
    rem-long/2addr v11, v3

    const-wide/16 v16, 0x1

    const-wide/16 v3, 0x0

    cmp-long v18, v11, v3

    if-eqz v18, :cond_0

    add-long v14, v14, v16

    .line 25
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v11, v3

    :goto_0
    cmp-long v2, v11, v14

    if-gez v2, :cond_b

    long-to-int v2, v11

    .line 28
    invoke-direct {v1, v0, v2, v7}, Lcom/gpc/operations/service/net/HTTPRequest;->getPartData(Landroid/content/Context;ILcom/gpc/operations/service/net/MultipartFormDataFile;)[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 29
    array-length v4, v3

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 34
    :cond_1
    sget-object v4, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 37
    const-string v3, "Keep-Alive"

    const-string v4, "no-cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "multipart/form-data;boundary="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v0, v2

    move-object v2, v6

    move-object/from16 v7, v18

    move-object/from16 v6, p3

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/gpc/operations/service/net/HTTPRequest;->createPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v3

    .line 42
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 44
    new-instance v4, Ljava/util/HashMap;

    move-object/from16 v5, p4

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 45
    const-string v6, "chunk"

    move-object/from16 v18, v3

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v3, "chunks"

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "Content-Disposition: form-data; name=\""

    if-lez v3, :cond_3

    .line 50
    :try_start_1
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v5, "partParams.keys"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v19, v3

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v20, v11

    sget-object v11, Lcom/gpc/operations/service/net/HTTPRequest;->TWO_HYPHENS:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/gpc/operations/service/net/HTTPRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/gpc/operations/service/net/HTTPRequest;->CRLF:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x22

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const-string v5, "this as java.lang.String).getBytes(charset)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 56
    :goto_2
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 57
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    move-object/from16 v3, v19

    move-wide/from16 v11, v20

    goto :goto_1

    :cond_3
    move-wide/from16 v20, v11

    .line 62
    const-string v3, "upload_filename"

    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/gpc/operations/service/net/HTTPRequest;->TWO_HYPHENS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/gpc/operations/service/net/HTTPRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/gpc/operations/service/net/HTTPRequest;->CRLF:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v3, "\";filename=\""

    .line 67
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 73
    array-length v3, v7

    const/4 v4, 0x0

    invoke-virtual {v2, v7, v4, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 74
    invoke-virtual {v2, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 83
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 84
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12b

    if-le v3, v4, :cond_4

    .line 85
    sget-object v3, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "post responseCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_9

    .line 89
    sget-object v2, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {v18 .. v18}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 91
    const-string v4, "`in`"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/gpc/operations/service/net/HTTPRequest;->readStream(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 93
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v5, "defaultCharset()"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {v5}, Lcom/gpc/operations/helper/GeneralResponse;->generator(Ljava/lang/String;)Lcom/gpc/operations/helper/GeneralResponse;

    move-result-object v3

    .line 96
    invoke-virtual {v3}, Lcom/gpc/operations/helper/GeneralResponse;->isSuccess()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 97
    new-instance v4, Lcom/gpc/operations/service/net/Chunk;

    invoke-direct {v4}, Lcom/gpc/operations/service/net/Chunk;-><init>()V

    .line 98
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lcom/gpc/operations/helper/GeneralResponse;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 100
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/gpc/operations/service/net/Chunk;->setIndex(I)V

    .line 102
    :cond_5
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 103
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "jsonObject.getString(\"message\")"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/gpc/operations/service/net/Chunk;->setMessage(Ljava/lang/String;)V

    .line 105
    :cond_6
    const-string v3, "chunks_done"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/gpc/operations/service/net/Chunk;->setChunksDone(Z)V

    .line 107
    invoke-virtual {v4}, Lcom/gpc/operations/service/net/Chunk;->getChunksDone()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 108
    const-string v3, "upload finish"

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v2, v14

    .line 112
    invoke-interface {v8, v0, v2}, Lcom/gpc/operations/service/net/HTTPResponseForFilePartsUploadListener;->onPartFinish(II)V

    .line 113
    invoke-interface {v8, v5}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onResponse(Ljava/lang/String;)V

    goto :goto_3

    .line 115
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload part:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/gpc/operations/service/net/Chunk;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " finish"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v2, v14

    .line 116
    invoke-interface {v8, v0, v2}, Lcom/gpc/operations/service/net/HTTPResponseForFilePartsUploadListener;->onPartFinish(II)V

    :goto_3
    add-long v11, v20, v16

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    goto/16 :goto_0

    .line 120
    :cond_8
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response error:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/gpc/operations/helper/GeneralResponse;->getError()Lcom/gpc/operations/helper/GeneralResponse$Error;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/operations/helper/GeneralResponse$Error;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 124
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetWork error! response code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onFailure(Ljava/lang/Exception;)V

    return-void

    .line 125
    :cond_a
    :goto_4
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "read file error."

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v8, v0}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onFailure(Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 217
    sget-object v2, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    invoke-interface {v8, v0}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onFailure(Ljava/lang/Exception;)V

    :cond_b
    return-void
.end method

.method public final post(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;JLcom/gpc/operations/service/net/HTTPResponseForFileUploadListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/gpc/operations/service/net/MultipartFormDataFile;",
            ">;J",
            "Lcom/gpc/operations/service/net/HTTPResponseForFileUploadListener;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p8

    const-string v0, "multipart/form-data;boundary="

    const-string v1, "url:"

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "responseListener"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    :try_start_0
    sget-object v3, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v3, "Keep-Alive"

    const-string v4, "no-cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/gpc/operations/service/net/HTTPRequest;->BOUNDARY:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v6, p3

    .line 222
    invoke-direct/range {v1 .. v6}, Lcom/gpc/operations/service/net/HTTPRequest;->createPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 226
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    .line 228
    invoke-direct/range {v1 .. v8}, Lcom/gpc/operations/service/net/HTTPRequest;->writeMultipartFormData(Landroid/content/Context;Ljava/io/DataOutputStream;Ljava/util/Map;Ljava/util/Map;JLcom/gpc/operations/service/net/HTTPResponseForFileUploadListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    invoke-direct {p0, v0, v8}, Lcom/gpc/operations/service/net/HTTPRequest;->processReponse(Ljava/net/HttpURLConnection;Lcom/gpc/operations/service/net/HTTPResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 235
    invoke-interface {v8, v0}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onFailure(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final post(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/gpc/operations/service/net/HTTPResponseListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/operations/service/net/HTTPResponseListener;",
            ")V"
        }
    .end annotation

    const-string v0, "url:"

    const-string v1, "url"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "responseListener"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/operations/service/net/HTTPRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    const-string v4, "Keep-Alive"

    const-string v5, "no-cache"

    const-string v6, "application/x-www-form-urlencoded"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    .line 4
    :try_start_1
    invoke-direct/range {v2 .. v7}, Lcom/gpc/operations/service/net/HTTPRequest;->createPostConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 10
    invoke-direct {p0, p2, p3, p4}, Lcom/gpc/operations/service/net/HTTPRequest;->writeFormData(Ljava/io/DataOutputStream;Ljava/util/Map;Lcom/gpc/operations/service/net/HTTPResponseListener;)V

    .line 12
    invoke-direct {p0, p1, p4}, Lcom/gpc/operations/service/net/HTTPRequest;->processReponse(Ljava/net/HttpURLConnection;Lcom/gpc/operations/service/net/HTTPResponseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, p0

    :goto_0
    move-object p1, v0

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    invoke-interface {p4, p1}, Lcom/gpc/operations/service/net/HTTPResponseListener;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method

.method public final setInSampleSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->inSampleSize:I

    return-void
.end method

.method public final setQuality(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->quality:I

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "ua"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/net/HTTPRequest;->ua:Ljava/lang/String;

    return-void
.end method
