.class public Lcom/gpc/sdk/misc/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:J = 0x2710L


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/gpc/sdk/misc/u;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/misc/u;->b:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/gpc/sdk/misc/u;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/gpc/sdk/misc/u;->d:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/misc/u;->a:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/gpc/sdk/misc/u;->b:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/gpc/sdk/misc/u;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/gpc/sdk/misc/u;->d:J

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/gpc/sdk/misc/u;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/gpc/sdk/misc/u;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/gpc/sdk/misc/u;->c:Ljava/lang/String;

    .line 23
    iput-wide p4, p0, Lcom/gpc/sdk/misc/u;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 13
    iget-wide v0, p0, Lcom/gpc/sdk/misc/u;->d:J

    sub-long v0, v4, v0

    const-wide/16 v2, 0x2710

    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    iget-object v0, p0, Lcom/gpc/sdk/misc/u;->a:Ljava/lang/String;

    .line 14
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gpc/sdk/misc/u;->b:Ljava/lang/String;

    .line 15
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/gpc/sdk/misc/u;->c:Ljava/lang/String;

    .line 16
    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/sdk/misc/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_2
    return v6
.end method
