.class public Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$b;->a:J

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$b;->b:Ljava/lang/String;

    return-void
.end method
