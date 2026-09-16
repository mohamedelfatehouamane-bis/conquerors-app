.class public Lcom/gpc/sdk/misc/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/misc/w;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/misc/w;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/misc/w;->c:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/gpc/sdk/misc/w;->d:Ljava/lang/String;

    .line 6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lcom/gpc/sdk/misc/w;->e:Ljava/lang/String;

    .line 7
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p5, "default"

    :cond_1
    iput-object p5, p0, Lcom/gpc/sdk/misc/w;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/gpc/sdk/misc/w;->g:Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/w;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/w;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/w;->g:Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/w;->a:Ljava/lang/String;

    return-object v0
.end method
