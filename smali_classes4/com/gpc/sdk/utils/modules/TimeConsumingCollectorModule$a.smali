.class public Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;->a:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;->b:Ljava/util/List;

    .line 4
    :cond_0
    new-instance v0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$b;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$b;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/utils/modules/TimeConsumingCollectorModule$a;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
