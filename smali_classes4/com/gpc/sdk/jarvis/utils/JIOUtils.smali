.class public Lcom/gpc/sdk/jarvis/utils/JIOUtils;
.super Ljava/lang/Object;
.source "JIOUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IOUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 22
    const-string v0, "IOUtils"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/sdk/jarvis/utils/JLogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
