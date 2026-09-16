.class public final Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

.field public final synthetic b:Lcom/gpc/sdk/compliance/GPCCompliance;

.field public final synthetic c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

.field public final synthetic d:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;Lcom/gpc/sdk/compliance/GPCCompliance;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    iput-object p2, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->b:Lcom/gpc/sdk/compliance/GPCCompliance;

    iput-object p3, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    iput-object p4, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->d:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppConfigLoadFailed(Lcom/gpc/sdk/bean/GPCAppConfigBackup;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/error/GPCException;)V
    .locals 7

    const-string v0, "currentTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ex"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GPCCompliance"

    if-nez p1, :cond_1

    .line 1
    const-string p1, "load AppConf Error."

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p3}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->d:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

    const/4 p2, 0x0

    .line 4
    const-string v0, "20"

    const-string v1, "330102"

    invoke-static {v1, p2, v0, p3}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    const-string p3, "exception(\n             \u2026                        )"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/error/GPCException;)V

    :cond_0
    return-void

    .line 16
    :cond_1
    const-string p3, "load from backup."

    invoke-static {v0, p3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p3, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {p3}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    .line 20
    iget-wide v0, p1, Lcom/gpc/sdk/bean/GPCAppConfigBackup;->backupsTimeStamp:J

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v0, v2

    invoke-virtual {p3, v0, v1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    invoke-virtual {p3}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getStringValue()Ljava/lang/String;

    move-result-object p3

    const-string v1, "config"

    invoke-virtual {v0, v1, p3}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 23
    iget-object p3, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;->a(Z)V

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->b:Lcom/gpc/sdk/compliance/GPCCompliance;

    .line 26
    iget-object v2, p1, Lcom/gpc/sdk/bean/GPCAppConfigBackup;->appConf:Lcom/gpc/sdk/bean/GPCAppConfig;

    .line 28
    iget-object v4, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    .line 29
    iget-object v5, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    .line 30
    iget-object v6, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->d:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

    move-object v3, p2

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/gpc/sdk/compliance/GPCCompliance;->access$process(Lcom/gpc/sdk/compliance/GPCCompliance;Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;)V

    return-void
.end method

.method public onAppConfigLoadFinished(Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)V
    .locals 9

    const-string v0, "serverTime"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    .line 2
    const-string v1, "config"

    const-string v2, "latest"

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    iget-object v3, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->b:Lcom/gpc/sdk/compliance/GPCCompliance;

    iget-object v6, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->c:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    iget-object v7, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    iget-object v8, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;->d:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lcom/gpc/sdk/compliance/GPCCompliance;->access$process(Lcom/gpc/sdk/compliance/GPCCompliance;Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;)V

    return-void
.end method
