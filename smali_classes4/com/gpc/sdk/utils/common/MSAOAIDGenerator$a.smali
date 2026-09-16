.class public Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bun/miitmdid/interfaces/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;->fetchMsa(Landroid/content/Context;)Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/util/concurrent/BlockingQueue;

.field public final synthetic c:Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;JLjava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$a;->c:Lcom/gpc/sdk/utils/common/MSAOAIDGenerator;

    iput-wide p2, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$a;->a:J

    iput-object p4, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/miitmdid/interfaces/IdSupplier;)V
    .locals 6

    const-string p1, "result:"

    const-string v0, "MSAOAIDGenerator"

    const-string v1, ""

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lcom/bun/miitmdid/interfaces/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p2

    .line 3
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$a;->a:J

    sub-long/2addr v2, v4

    .line 5
    sget-object p1, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1, v2, v3}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logGenerateOAIDTimeEvent(J)V

    .line 6
    iget-object p1, p0, Lcom/gpc/sdk/utils/common/MSAOAIDGenerator$a;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1, p2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
