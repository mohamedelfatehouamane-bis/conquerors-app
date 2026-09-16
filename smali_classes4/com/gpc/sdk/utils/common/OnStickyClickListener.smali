.class public abstract Lcom/gpc/sdk/utils/common/OnStickyClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final INTERVAL:J = 0x3e8L


# instance fields
.field private mLastClickTime:J

.field private timeInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3e8

    .line 2
    iput-wide v0, p0, Lcom/gpc/sdk/utils/common/OnStickyClickListener;->timeInterval:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lcom/gpc/sdk/utils/common/OnStickyClickListener;->timeInterval:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/gpc/sdk/utils/common/OnStickyClickListener;->mLastClickTime:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/gpc/sdk/utils/common/OnStickyClickListener;->timeInterval:J

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/OnStickyClickListener;->onSingleClick()V

    .line 5
    iput-wide v0, p0, Lcom/gpc/sdk/utils/common/OnStickyClickListener;->mLastClickTime:J

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/utils/common/OnStickyClickListener;->onFastClick()V

    return-void
.end method

.method public abstract onFastClick()V
.end method

.method public abstract onSingleClick()V
.end method
