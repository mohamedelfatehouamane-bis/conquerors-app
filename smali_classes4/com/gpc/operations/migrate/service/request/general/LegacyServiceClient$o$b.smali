.class public Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/FileHelper$OnWriteFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->a(Lcom/gpc/operations/migrate/service/network/http/response/HTTPResponse;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$b;->b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;

    iput-wide p2, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$b;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(J)V
    .locals 7

    const-string v0, "LegacyServiceClient"

    const-string v1, "download onProgress:"

    .line 1
    :try_start_0
    iget-wide v2, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$b;->a:J

    const-wide/16 v4, 0x0

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    long-to-float p1, p1

    long-to-float p2, v2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p2, p2, v2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o$b;->b:Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;

    iget-object p1, p1, Lcom/gpc/operations/migrate/service/request/general/LegacyServiceClient$o;->c:Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;

    invoke-interface {p1, p2}, Lcom/gpc/operations/migrate/service/request/general/ILegacyServiceClient$DownloadRequestListener;->onDownloadProgress(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 11
    const-string p2, ""

    invoke-static {v0, p2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
